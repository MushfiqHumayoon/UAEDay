//
//  AudioManager.swift
//  UAEDay
//
//  Created by Mushfiq Humayoon on 01/12/23.
//

import SwiftUI
import AVFoundation

class AudioManager: NSObject, ObservableObject {

    var audioPlayer: AVAudioPlayer?
    @Published var playbackFinished = false

    func playAudio() {
        guard let url = Bundle.main.url(forResource: "firework", withExtension: "mp3") else { return }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.numberOfLoops = -1 //0 // For continuous looping
            audioPlayer?.delegate = self
            audioPlayer?.play()
        } catch {
            print("Error playing audio: \(error.localizedDescription)")
        }
    }

    func stopAudio() {
        audioPlayer?.stop()
    }
}
extension AudioManager: AVAudioPlayerDelegate {
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        playbackFinished = true
    }
}
