//
//  DebugAreaView.swift
//  CodeEditModules/StatusBar
//
//  Created by Lukas Pistrol on 22.03.22.
//

import SwiftUI

struct DebugAreaView: View {
    @Environment(\.colorScheme)
    private var colorScheme

    @EnvironmentObject
    private var model: DebugAreaViewModel

    var body: some View {
        VStack(spacing: 0) {
            if let selection =  model.selectedTab {
                selection
            } else {
                Text("Tab not found")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .overlay(alignment: .bottomTrailing) {
            HStack(spacing: 5) {
                Divider()
                HStack(spacing: 0) {
                    Button {
                        model.isMaximized.toggle()
                    } label: {
                        Image(systemName: "arrowtriangle.up.square")
                    }
                    .buttonStyle(.icon(isActive: model.isMaximized, size: 24))
                }
            }
            .padding(.horizontal, 5)
            .padding(.vertical, 8)
            .frame(maxHeight: 27)
        }
    }
}
