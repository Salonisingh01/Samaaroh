//
//  YourTicketViewController.swift
//  Samaaroh
//
//  Created by WCTM on 01/08/24.
//

import UIKit

class YourTicketViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func Home(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(identifier: "MainViewController") as! MainViewController
       
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
