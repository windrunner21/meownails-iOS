//
//  MeowNailsApp.swift
//  MeowNails WatchKit Extension
//
//  Created by Imran on 23.11.21.
//

import SwiftUI

@main
struct MeowNailsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
