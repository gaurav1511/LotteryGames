//
//  RansomApp.swift
//  Ransom
//
//  Created by Gaurav Singh on 10/01/22.
//

import SwiftUI

@main
struct RansomApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen()
        }
    }
}
