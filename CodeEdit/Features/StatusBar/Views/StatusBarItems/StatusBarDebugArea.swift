//
//  StatusBarDebugArea.swift
//  CodeEdit
//
//  Created by Gokulakrishnan Subramaniyan on 21/06/23.
//

import SwiftUI

struct StatusBarDebugArea: View {
//    @State var selection: DebugAreaTab? = .terminal
//    @Binding var selection: DebugAreaTab?

    @EnvironmentObject
    private var model: DebugAreaViewModel

    var body: some View {
        HStack(alignment: .center) {
            Button("Terminal") {
                model.selectedTab=DebugAreaTab.terminal
            }.background(model.selectedTab == DebugAreaTab.terminal ? .blue : .black)
            Button("Debugger") {
                model.selectedTab=DebugAreaTab.debugConsole
            }.background(model.selectedTab == DebugAreaTab.debugConsole ? .blue : .black)
            Button("Output") {
                model.selectedTab=DebugAreaTab.output
            }.background(model.selectedTab == DebugAreaTab.output ? .blue : .black)
        }
    }
}
