//
//  SwiftUIForAllDevicesApp.swift
//  SwiftUIForAllDevices-WaftchOS WatchKit Extension
//
//  Created by Mitya Kim on 7/24/22.
//

import SwiftUI

@main
struct SwiftUIForAllDevicesApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
