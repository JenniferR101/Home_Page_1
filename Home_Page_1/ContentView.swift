//
//  ContentView.swift
//  Home_Page_1
//
//  Created by student on 11/4/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // SoundBoard Tab
            NavigationView {
                SoundBoardView()
                    .background(Color(red: 0.8, green: 0.9, blue: 1.0).ignoresSafeArea()) // Light bluish-gray
            }
            .tabItem {
                Image(systemName: "house")
                Text("SoundBoard")
            }
            
            // Nostalgia Picks Tab
            NavigationView {
                NostalgiaPicksView()
                    .background(Color(red: 0.8, green: 0.9, blue: 1.0).ignoresSafeArea()) // Light bluish-gray
            }
            .tabItem {
                Image(systemName: "star")
                Text("Nostalgia Picks")
            }
            
            // Sound Vault Tab
            NavigationView {
                SoundVaultView()
                    .background(Color(red: 0.8, green: 0.9, blue: 1.0).ignoresSafeArea()) // Light bluish-gray
            }
            .tabItem {
                Image(systemName: "folder")
                Text("Sound Vault")
            }
        }

    }
}

struct SoundBoardView: View {
    var body: some View {
        ScrollView { // Wrap the content in a ScrollView for vertical scrolling
            VStack(spacing: 20) {
                // Placeholder Box
                Rectangle()
                    .frame(height: 400) // Adjust the height as needed
                    .foregroundColor(.gray)
                    .overlay(
                        Text("Placeholder for Future View")
                            .foregroundColor(.white)
                            .font(.title2)
                    )
                    .cornerRadius(10)
                
                // "Local Memories Await" Title
                Text("Local Memories Await")
                    .font(.title2)
                    .italic()
                    .foregroundColor(.black)
                
                // Memory Cards - "Type "MemoryCard" to add more
                VStack(spacing: 15) {
                    MemoryCard()
                    MemoryCard()
                    MemoryCard()
                    MemoryCard()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("SoundBoard")
    }
}

struct MemoryCard: View {
    var body: some View {
        HStack(spacing: 15) {
            // Time and Memory Title
            VStack(alignment: .leading) {
                Text("Memory #1")
                    .font(.headline)
                Text("0:27")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            
            // Media Controls
            HStack(spacing: 10) {
                Button(action: {}) {
                    Image(systemName: "backward.fill")
                }
                Button(action: {}) {
                    Image(systemName: "play.fill")
                }
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }
            .font(.title2)
            
            // Heart Icon
            Button(action: {}) {
                Image(systemName: "heart")
                    .font(.title2)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(UIColor.systemGray4))
        .cornerRadius(15)
    }
}

struct NostalgiaPicksView: View {
    var body: some View {
        VStack {
            Text("Nostalgia Picks")
                .font(.largeTitle)
                .padding()
            // Additional content can be added here
        }
        .navigationTitle("Nostalgia Picks")
    }
}

struct SoundVaultView: View {
    var body: some View {
        VStack {
            Text("Sound Vault")
                .font(.largeTitle)
                .padding()
            // Additional content can be added here
        }
        .navigationTitle("Sound Vault")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

