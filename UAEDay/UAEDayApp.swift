//
//  UAEDayApp.swift
//  UAEDay
//
//  Created by Mushfiq Humayoon on 01/12/23.
//

import SwiftUI
import AVFoundation

@main
struct UAEDayApp: App {
    let audioManager = AudioManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
    func setupAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Error setting up audio session: \(error.localizedDescription)")
        }
    }
}
