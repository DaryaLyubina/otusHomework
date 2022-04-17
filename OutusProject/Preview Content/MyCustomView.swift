//
//  MyCustomView.swift
//  OutusProject
//
//  Created by Darya Lyubina  on 17.04.2022.
//

import UIKit
import SwiftUI

class OrangeCircle: UIView {
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
        
        layer.cornerRadius = 25
        clipsToBounds = true
        
        backgroundColor = .orange
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


struct MyCustomView: UIViewRepresentable {
    func updateUIView(_ uiView: OrangeCircle, context: Context) {
    }
    
    func makeUIView(context: Context) -> OrangeCircle {
        OrangeCircle()
    }
}
