//
//  AboutListView.swift
//  iosApp
//
//  Created by Gabriela Sillis on 22/01/25.
//  Copyright © 2025 orgName. All rights reserved.
//

import SwiftUI
import shared

struct AboutListView: View {
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                    Text(item.subTitle)
                        .font(.body)
                        .foregroundStyle(.primary)
                }
            }
        }
    }
    
    private struct RowItem: Hashable {
        let title: String
        let subTitle: String
    }
    
    private let items: [RowItem] = {
        let platform = Platform()
        platform.logSystemInfo()
        
        var result: [RowItem] = [
            .init(
                title: "Operating System",
                subTitle: "\(platform.osName) \(platform.osVersion)"
            ),
            .init(
                title: "Device",
                subTitle: platform.deviceModel
            ),
            .init(
                title: "Density",
                subTitle: "@\(platform.density)x"
            )
        ]
        return result
    }()
}
