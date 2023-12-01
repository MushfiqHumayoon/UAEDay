//
//  ContentView.swift
//  UAEDay
//
//  Created by Mushfiq Humayoon on 01/12/23.
//

import SwiftUI

struct ContentView: View {

//    @ObservedObject var audioManager = AudioManager()
    @StateObject var audioManager = AudioManager()
    @State var isPlayed = false

    var body: some View {
        GeometryReader { proxy in
            ZStack {
                BackgroundView(geometry: proxy.size)
                if !isPlayed {
                    FireWorkView(geometry: proxy.size)
                        .onAppear {
                            audioManager.playAudio()
                        }
                }
                BuildingView()
            }
        }
        .edgesIgnoringSafeArea(.all)
        .onReceive(audioManager.$playbackFinished) { finished in
            isPlayed = finished
        }
    }
}

#Preview {
    ContentView()
}
