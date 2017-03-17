//
//  ExpandedController.swift
//  VLCircularTransition
//
//  Created by Vignesh on 17/03/17.
//  Copyright © 2017 Vignesh. All rights reserved.
//

import UIKit

class ExpandedController: UIViewController {
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    var viewBgColor = UIColor()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = viewBgColor
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
