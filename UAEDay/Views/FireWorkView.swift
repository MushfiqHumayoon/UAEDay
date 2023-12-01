//
//  FireWorkView.swift
//  UAEDay
//
//  Created by Mushfiq Humayoon on 01/12/23.
//

import SwiftUI

struct FireWorkView: UIViewRepresentable {
    var geometry: CGSize
    func makeUIView(context: Context) -> UIView {
        let host = UIView(frame: CGRect(x: 0.0, y: 0.0, width: geometry.width, height: geometry.height))
        let fireWork = Firework()
        host.addSubview(fireWork.startEmitter(size: geometry))
        return host
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // Update the view if needed
    }
}
