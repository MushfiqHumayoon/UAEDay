//
//  BackgroundView.swift
//  UAEDay
//
//  Created by Mushfiq Humayoon on 01/12/23.
//

import SwiftUI

struct BackgroundView: View {
    var geometry: CGSize
    var body: some View {
        VStack {
            ZStack {
                Image(uiImage: UIImage(imageLiteralResourceName: "Sky"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
        }
        .frame(width: geometry.width, height: geometry.height)
        .background(.black)
    }
}
