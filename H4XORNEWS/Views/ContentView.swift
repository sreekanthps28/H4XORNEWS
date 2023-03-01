//
//  ContentView.swift
//  H4XORNEWS
//
//  Created by SREEKANTH PS on 01/03/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            
            List(networkManager.results) { post in
                if let url = post.url{
                    NavigationLink(destination: DetailView(url: url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
            }.navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
