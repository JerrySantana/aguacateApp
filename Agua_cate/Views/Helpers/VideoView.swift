//
//  VideoView.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//
import SwiftUI
import AVKit

struct VideoView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cuidado", withExtension: "mp4")!))
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
