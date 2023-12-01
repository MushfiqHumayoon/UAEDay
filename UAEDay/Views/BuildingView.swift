//
//  BuildingView.swift
//  UAEDay
//
//  Created by Mushfiq Humayoon on 01/12/23.
//

import SwiftUI

struct BuildingView: View {
    let startDate = Date()
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Image(uiImage: UIImage(imageLiteralResourceName: "Building"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            TimelineView(.animation) { context in
                                Image(uiImage: UIImage(imageLiteralResourceName: "Flag-UAE"))
                                    .resizable()
                                    .frame(width: 120, height: 80)
                                    .offset(x: 25, y: 15)
                                    .distortionEffect(ShaderLibrary.simpleWave(.float(startDate.timeIntervalSinceNow)), maxSampleOffset: .zero)
                            }
                            Spacer()
                        }
                    }
            }
        }
    }
}
