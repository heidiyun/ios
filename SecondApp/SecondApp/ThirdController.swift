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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
