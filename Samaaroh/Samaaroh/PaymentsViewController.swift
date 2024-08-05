//
//  PaymentsViewController.swift
//  Samaaroh
//
//  Created by WCTM on 04/08/24.
//

import UIKit

class PaymentsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    

    @IBAction func Completepayment(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "YourTicketViewController") as! YourTicketViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
