//
//  ContentView.swift
//  eDoctor
//
//  Created by Rishab Jain on 7/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            DiagnosisView()
                .tabItem {
                    Label("Diagnosis", systemImage: "magnifyingglass")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
