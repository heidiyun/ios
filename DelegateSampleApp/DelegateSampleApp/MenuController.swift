//
//  MenuController.swift
//  DelegateSampleApp
//
//  Created by Yunjeong Goo on 2019. 1. 3..
//  Copyright © 2019년 Yunjeong Goo. All rights reserved.
//

import UIKit

class MenuController: UIViewController {

    @IBAction func showXIBController(_ sender: UIButton) {
        let controller = XIBController()
        present(controller, animated: true)
    }
    
    @IBAction func showStoryboardController(_ sender: UIButton) {
        performSegue(withIdentifier: "StoryboardSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
