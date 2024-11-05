//
//  CardView.swift
//  KanBan
//
//  Created by Sei Mouk on 5/11/24.
//

import UIKit

class CardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetup()
    }
    
    private func initialSetup() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
        layer.backgroundColor = .init(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
        cornerRadius = 15
    }
}
