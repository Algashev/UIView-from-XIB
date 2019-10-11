//
//  ExampleView.swift
//  UIView from XIB
//
//  Created by Александр Алгашев on 11/10/2019.
//  Copyright © 2019 Александр Алгашев. All rights reserved.
//

import UIKit

@IBDesignable class ExampleView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadFromNib()
    }
}
