//
//  ViewController.swift
//  iOS8-PopOver
//
//  Created by Mani on 13.09.14.
//  Copyright (c) 2014 Mani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate
{
    func showPopover(_ base: UIView, text: String, width: CGFloat, height: CGFloat)
    {
        if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "popover") as? PopOverViewController {
            
            viewController.text = text
            viewController.width = width
            viewController.height = height
            
            let navController = UINavigationController(rootViewController: viewController)
            navController.modalPresentationStyle = .popover
            
            if let pctrl = navController.popoverPresentationController {
                pctrl.delegate = self
                
                pctrl.sourceView = base
                pctrl.sourceRect = base.bounds
                
                self.present(navController, animated: true, completion: nil)
            }
        }
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    @IBAction func onShow(_ sender: UIButton)
    {
        self.showPopover(sender, text: "Hello World :)", width: 300, height: 200)
    }
    
    @IBAction func onShow1(_ sender: UIButton)
    {
        self.showPopover(sender, text: "Hello World :)", width: self.view.frame.width - 45, height:  self.view.frame.height - 197)
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
}

