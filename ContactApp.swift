//
//  ContactApp.swift
//  Contact
//
//  Created by Rohan Sakhare on 11/01/24.

import SwiftUI

@main
struct ContactApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
