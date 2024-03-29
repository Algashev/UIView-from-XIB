//
//  UIView.swift
//  Trachtenberg
//
//  Created by Александр Алгашев on 05/09/2019.
//  Copyright © 2019 Александр Алгашев. All rights reserved.
//

import UIKit

// MARK: - Load from Xib
extension UIView {
    private func getViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = String(describing: type(of: self))
        let bundleObjects = bundle.loadNibNamed(nibName, owner: self)
        let view = bundleObjects?.first as! UIView
        return view
    }
    
    func loadFromNib() {
        let view: UIView = getViewFromNib()
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            view.widthAnchor.constraint(equalTo: self.widthAnchor),
            view.heightAnchor.constraint(equalTo: self.heightAnchor)])
    }
}
