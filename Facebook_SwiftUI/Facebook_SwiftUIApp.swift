//
//  Facebook_SwiftUIApp.swift
//  Facebook_SwiftUI
//
//  Created by Vandan Patel on 2/3/21.
//

import SwiftUI

@main
struct Facebook_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            HomePageView(searchText: .constant(""))
        }
    }
}
