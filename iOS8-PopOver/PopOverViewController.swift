//
//  PopOverViewController.swift
//  iOS8-PopOver
//
//  Created by Mani on 13.09.14.
//  Copyright (c) 2014 Mani. All rights reserved.
//

import UIKit

class PopOverViewController: UIViewController {

    var text: String = "undefined"
    var width: CGFloat!
    var height: CGFloat!
    
    @IBOutlet fileprivate var mainLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSize(width: width, height: height)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(PopOverViewController.dismiss(_:)))
        
        mainLabel?.text = self.text
    }
    
    func dismiss(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
}
