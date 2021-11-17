//
//  PagingView.swift
//  Buildio
//
//  Created by Sergey Khliustin on 31.10.2021.
//

import Foundation
import SwiftUI

protocol PagingView: BaseView where ModelType: PagingViewModelProtocol, ModelType.ValueType.ItemType: Hashable {
    associatedtype ValueBody: View
    associatedtype ToolbarBody: View
    associatedtype NavigationLinksBody: View
//    var selected: ModelType.ValueType.ItemType? { get }
    
    @ViewBuilder
    func buildItemView(_ item: ModelType.ValueType.ItemType) -> ValueBody
    
    @ViewBuilder
    func additionalToolbarItems() -> ToolbarBody
    
    @ViewBuilder
    func navigationLinks() -> NavigationLinksBody
}

extension PagingView {
    @ViewBuilder
    var body: some View {
        ZStack {
            navigationLinks()
            VStack {
                ScrollView {
                    if let error = model.error, model.state == .error {
                        buildErrorView(error)
                    }
                    LazyVStack(spacing: 16) {
                        ForEach(model.items) { item in
                            buildItemView(item)
                                .onAppear {
                                    if item == model.items.last {
                                        logger.debug("UI load more builds")
                                        model.nextPage()
                                    }
                                }
                        }
                    }
                    if case .loading = model.pagingState {
                        ProgressView()
                            .padding(16)
                    } else if case .error(let error) = model.pagingState {
                        buildErrorView(error)
                    }
                }
            }
            .toolbar {
                HStack(alignment: .center, spacing: 0) {
                    if case .loading = model.state {
                        ProgressView().frame(width: 44, height: 44, alignment: .center)
                    }
                    Button {
                        model.refresh(params: nil)
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                    }
                    .frame(width: 44, height: 44, alignment: .center)
                    additionalToolbarItems()
                }
            }
        }
    }
    
    @ViewBuilder
    func buildErrorView(_ error: ErrorResponse) -> some View {
        Text(error.rawError.localizedDescription)
            .padding(16)
    }
    
    @ViewBuilder
    func navigationLinks() -> some View {
        
    }
    
    @ViewBuilder
    func additionalToolbarItems() -> some View {
        
    }
}
