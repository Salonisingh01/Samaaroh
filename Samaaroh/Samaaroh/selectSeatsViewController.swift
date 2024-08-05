//
//  selectSeatsViewController.swift
//  Samaaroh
//
//  Created by WCTM on 31/07/24.
//

import UIKit

class selectSeatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func BuyTickets(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PaymentsViewController") as! PaymentsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
   
}
