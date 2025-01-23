//
//  AboutDeviceScreenView.swift
//  iosApp
//
//  Created by Gabriela Sillis on 22/01/25.
//  Copyright © 2025 orgName. All rights reserved.
//

import SwiftUI


struct AboutDeviceScreenView: View {
    var body: some View {
        NavigationStack {
            AboutListView()
                .navigationTitle("About Device")
        }
    }
}
