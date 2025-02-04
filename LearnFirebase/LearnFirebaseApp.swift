//
//  LearnFirebaseApp.swift
//  LearnFirebase
//
//  Created by shashwat singh on 01/02/25.
//

import SwiftUI
import Firebase

@main
struct LearnFirebaseApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
