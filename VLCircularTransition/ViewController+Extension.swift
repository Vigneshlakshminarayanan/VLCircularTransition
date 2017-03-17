//
//  ViewController+Extension.swift
//  VLCircularTransition
//
//  Created by Vignesh on 17/03/17.
//  Copyright © 2017 Vignesh. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let expandedViewController = segue.destination as! ExpandedController
        expandedViewController.transitioningDelegate = self
        expandedViewController.modalPresentationStyle = .custom
        
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = self.facebookButton.center
        transition.circleColor = self.facebookButton.backgroundColor!
        
        return transition
        
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        self.view.isUserInteractionEnabled = true
        
        UIView.animate(withDuration: 0.8, delay: 1, usingSpringWithDamping: 2, initialSpringVelocity: 1.5, options: UIViewAnimationOptions.curveLinear, animations: {
            
            for constraint in self.facebookButton.constraints{
                
                if (constraint.firstAttribute == .height){
                    constraint.constant = 37
                }else if (constraint.firstAttribute == .width){
                    constraint.constant = 170
                }
                
                self.facebookButton.layer.cornerRadius = 0
                self.facebookButton.setTitle("Sign in with Facebook", for: .normal)
            }
            
            for constraint in self.googleButton.constraints{
                
                if (constraint.firstAttribute == .height){
                    constraint.constant = 37
                }else if (constraint.firstAttribute == .width){
                    constraint.constant = 170
                }
                
                self.googleButton.layer.cornerRadius = 0
                self.googleButton.setTitle("Sign in with Google+", for: .normal)
            }
            
            
            
        }, completion: { (true) in
            
            
        })
        
        
        self.view.layoutIfNeeded()
        facebookButton.layer.removeAllAnimations()
        googleButton.layer.removeAllAnimations()
        
        transition.transitionMode = .dismiss
        transition.transitionMode = .dismiss
        transition.startingPoint = self.facebookButton.center
        transition.circleColor = self.facebookButton.backgroundColor!
        
        return transition
    }
    
    func animateSender(button:UIButton){
        
        UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1.5, options: UIViewAnimationOptions.curveLinear, animations: {
            
            for constraint in button.constraints{
                
                if (constraint.firstAttribute == .height)||(constraint.firstAttribute == .width){
                    constraint.constant = 50
                }
            }
            
            self.view.layoutIfNeeded()
            
            button.setTitle("", for: .normal)
            button.frame.size.width = button.frame.size.height
            
            button.layer.cornerRadius = button.frame.size.width/2.0
            button.layer.masksToBounds = true
            button.clipsToBounds = true
            button.center = self.view.center
            
        }, completion: { (true) in
            
            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 2.5, options: UIViewAnimationOptions.curveLinear, animations: {
                
                let pulseAnimation:CABasicAnimation = CABasicAnimation(keyPath: "transform.scale")
                pulseAnimation.duration = 0.8
                pulseAnimation.fromValue = NSNumber(value: 1.0)
                pulseAnimation.toValue = NSNumber(value: 1.2)
                pulseAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                pulseAnimation.autoreverses = true
                pulseAnimation.repeatCount = FLT_MAX
                button.layer.add(pulseAnimation, forKey: nil)
            }, completion: { (true) in
                
                
            })
        })
        
    }
    
    func animateClouds(){
        
        self.cloudsImgView.frame = CGRect(x:self.view.frame.size.width,y:25,width:200,height:70)

        UIView.animate(withDuration: 50.0, animations: {
            
            self.cloudsImgView.frame = CGRect(x:-300,y:25,width:200,height:70)
            
        })
    }
    
}
