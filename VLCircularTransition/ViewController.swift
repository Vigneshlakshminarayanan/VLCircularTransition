//
//  ViewController.swift
//  VLCircularTransition
//
//  Created by Vignesh on 17/03/17.
//  Copyright © 2017 Vignesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIViewControllerTransitioningDelegate {
    
    
    @IBOutlet var cloudsImgView: UIImageView!
    @IBOutlet var cloudLeadingMargin: NSLayoutConstraint!
    @IBOutlet var buttonWidthConstraint: NSLayoutConstraint!
    @IBOutlet var buttonHeightContraint: NSLayoutConstraint!
    @IBOutlet var facebookButton: UIButton!
    @IBOutlet var googleButton: UIButton!
    
    let transition = VLCircularTransition()
    var buttonCenter = CGPoint.zero
    
    var initialWidthConstraint = NSLayoutConstraint()
    var initialHeightConstraint = NSLayoutConstraint()
    
    @IBAction func googleButtonTapped(_ sender: Any) {
        
        self.view.isUserInteractionEnabled = false
        self.animateSender(button:googleButton)
        callSegueAfter5Seconds(button:googleButton)
    }
    
    @IBAction func facebookButtonTapped(_ sender: Any) {
        
        self.view.isUserInteractionEnabled = false
        self.animateSender(button:facebookButton)
        callSegueAfter5Seconds(button:facebookButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(patternImage: #imageLiteral(resourceName: "appBg"))
        storeInitialConstraintPosition()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        animateClouds()
    }
    
    func callSegueAfter5Seconds(button:UIButton){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0, execute: {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let expandedViewController = storyboard.instantiateViewController(withIdentifier: "ExpandedController") as! ExpandedController
            
            expandedViewController.viewBgColor = button.backgroundColor!
            expandedViewController.transitioningDelegate = self
            expandedViewController.modalPresentationStyle = .custom
            
            self.modalPresentationStyle = .custom
            self.present(expandedViewController, animated: true, completion: nil)
        })
    }
    
    func storeInitialConstraintPosition(){
        
        for constraint in facebookButton.constraints{
            if (constraint.firstAttribute == .height){
                initialWidthConstraint.constant = 37
            }else if (constraint.firstAttribute == .width){
                initialHeightConstraint.constant = 170
            }
        }
    }
}
