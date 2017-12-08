//
//  DisplayViewController.swift
//  BreakfastTable
//
//  Created by Steven Lipton on 12/4/17.
//  Copyright © 2017 Steven Lipton. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    var imageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.frame = view.frame
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: title!)
        view.addSubview(imageView)
    }
}
