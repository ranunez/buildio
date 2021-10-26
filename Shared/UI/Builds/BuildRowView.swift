//
//  BuildRowView.swift
//  Buildio
//
//  Created by severehed on 21.10.2021.
//

import SwiftUI
import Models

struct BuildRowView: View {
    @State var expanded: Bool = false
    @State var model: V0BuildListAllResponseItemModel
    
    var body: some View {
        HStack(alignment: .top) {
            let statusColor = model.status?.color ?? Color.white.opacity(0)
            ZStack(alignment: .trailing) {
                RoundedRectangle(cornerRadius: 5)
                    .fill(statusColor)
                    .frame(width: 10)
                Rectangle()
                    .fill(statusColor)
                    .frame(width: 5)
            }
            
            VStack(alignment: .leading) {
                Group {
                    TagView(spacing: 4, content: { [
                        AnyView(
                            Text(model.statusText.capitalized)
                                .foregroundColor(statusColor)
                                .padding(8)
                        ),
                        
                        AnyView(
                            Group {
                                Text(model.branch ?? "No branch")
                                    .foregroundColor(.white)
                                    .padding(8)
                                    .lineLimit(1)
                            }
                                .background(Color(red: 0.27, green: 0.75, blue: 0.91))
                                .cornerRadius(4)
                        ),
                        
                        AnyView(
                            Text(model.triggeredWorkflow ?? "No workflow")
                                .padding(8)
                                .border(Color.b_BorderLight, width: 2)
                                .cornerRadius(4)
                        ),
                    ]
                    })
                        .font(.subheadline)
                    
                    Rectangle()
                        .fill(Color(red: 0.80, green: 0.80, blue: 0.80))
                        .frame(height: 4)
                }
                
                Group {
                    if let triggeredAt = model.triggeredAt {
                        Text("Triggered on \(triggeredAt)")
                    }
                    
                    Text("12m 17s")
                    
                    if let buildNumber = model.buildNumber {
                        Text("\(buildNumber)")
                    }
                    
                    let machineText = [model.machineTypeId, model.stackIdentifier].compactMap({ $0 }).joined(separator: " ")
                    
                    if !machineText.isEmpty {
                        Text(machineText)
                    }
                    
                    if let triggeredBy = model.triggeredBy {
                        Text(triggeredBy)
                    }
                    
                    if let abortReason = model.abortReason {
                        Text(abortReason)
                    }
                    
                    Rectangle()
                        .fill(Color(red: 0.80, green: 0.80, blue: 0.80))
                        .frame(height: 1)
                }
                
                Button(action: {
                    withAnimation {
                        expanded = !expanded
                    }
                }, label: {
                    Text(expanded ? "Less" : "More")
                    Image(systemName: expanded ? "chevron.up" : "chevron.down")
                })
                    .padding([.trailing, .top, .bottom], 8)
                
                if expanded {
                    Group {
                        Rectangle()
                            .fill(Color(red: 0.80, green: 0.80, blue: 0.80))
                            .frame(height: 1)
                        
                        Text("Commit hash:")
                        
                        Text(model.commitHash ?? "No commit hash specified")
                            .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38))
                        
                        Rectangle()
                            .fill(Color(red: 0.80, green: 0.80, blue: 0.80))
                            .frame(height: 1)
                    }
                    
                    Group {
                        Text("Commit message:")
                        
                        Text(model.commitMessage ?? "No commit message")
                            .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38))
                        
                        Rectangle()
                            .fill(Color(red: 0.80, green: 0.80, blue: 0.80))
                            .frame(height: 1)
                    }
                    
//                    Group {
//                        Text("Build tags:")
//
//                        Text("--osx-xcode-12.5.x, --standard, --paying, --scheduler-a")
//                            .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38))
//
//                        Rectangle()
//                            .fill(Color(red: 0.80, green: 0.80, blue: 0.80))
//                            .frame(height: 1)
//                    }
//
                    if let startedOn = model.startedOnWorkerAt {
                        Group {
                            Text("Started on worker at:")
                            
                            Text(startedOn)
                                .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38))
                            
                            Rectangle()
                                .fill(Color(red: 0.80, green: 0.80, blue: 0.80))
                                .frame(height: 1)
                        }
                    }
                    
                    if let finishedAt = model.finishedAt {
                        Group {
                            Text("Finished at:")
                            
                            Text(finishedAt)
                                .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38))
                            
                            Rectangle()
                                .fill(Color(red: 0.80, green: 0.80, blue: 0.80))
                                .frame(height: 1)
                        }
                    }
                    
                    if let params = model.originalBuildParams {
                        Group {
//                            let text = "{" + params.map({ ["\"\($0.key)\"", "\"\($0.value)\""].joined(separator: ":") }).joined(separator: ",") + "}"
                            Text("Build parameters:")
                            
                            Group {
                                Text(params)
                                    .lineLimit(nil)
                                    .font(.subheadline)
                                    .foregroundColor(Color.b_Primary)
                                    .padding(10)
                                    .layoutPriority(1)
                            }
                            .border(Color(red: 0.84, green: 0.84, blue: 0.84), width: 1)
                            .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                            .cornerRadius(4)
                        }
                    }
                }
                
                Rectangle()
                    .fill(Color(red: 0.80, green: 0.80, blue: 0.80))
                    .frame(height: 1)
            }
        }
        .font(.body)
        .foregroundColor(Color(red: 0.67, green: 0.67, blue: 0.67))
        .background(Color.white)
//        .padding()
    }
}

struct BuildRowView_Previews: PreviewProvider {
    static var previews: some View {
        let model = V0BuildListAllResponseItemModel(
            abortReason: nil,
            branch: "develop",
            buildNumber: 1,
            commitHash: "some hash",
            commitMessage: "some message",
            commitViewUrl: nil,
            creditCost: nil,
            environmentPrepareFinishedAt: nil,
            finishedAt: "2021-10-07 07:13:16",
            isOnHold: false,
            isProcessed: true,
            machineTypeId: "standard",
            originalBuildParams: "params", //["branch" : "develop", "workflow_id": "ttestflight"],
            pullRequestId: nil,
            pullRequestTargetBranch: nil,
            pullRequestViewUrl: nil,
            repository: nil,
            slug: "nil",
            stackIdentifier: "osx-xcode-12.5.x",
            startedOnWorkerAt: "2021-10-07 07:13:16",
            status: .success,
            statusText: "success",
            tag: nil,
            triggeredAt: "2020-03-05T09:38:04Z",
            triggeredBy: "manual-antonvolo2",
            triggeredWorkflow: "ttestflight")
        BuildRowView(model: model)
            .preferredColorScheme(.light)
            
    }
}
