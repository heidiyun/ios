//
//  ThirdController.swift
//  SecondApp
//
//  Created by Yunjeong Goo on 2019. 1. 2..
//  Copyright © 2019년 Yunjeong Goo. All rights reserved.
//

import UIKit

class ThirdController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
     var name: String?
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        // Do any additional setup after loading the view.
    }
}
