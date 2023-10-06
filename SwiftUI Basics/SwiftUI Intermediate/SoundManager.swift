//
//  SoundManager.swift
//  SwiftUI Basics
//
//  Created by Ashish Pisey on 22/09/23.
//

import SwiftUI
import AVKit

class SoundManager {
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case retroGame = "RetroGame"
        case whoosh = "Whoosh"
    }
    
    func playSound(sound: SoundOption) {
        let instance = SoundManager()

        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".wav") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error: \(error.localizedDescription)")
        }
    }
}

struct SoundsView: View {
    
    var body: some View {
        VStack(spacing: 40) {
            Button("play sound 1") {
                SoundManager.instance.playSound(sound: .retroGame)
            }
            Button("play sound 2") {
                SoundManager.instance.playSound(sound: .whoosh)
            }
        }
    }
}

#Preview {
    SoundsView()
}
