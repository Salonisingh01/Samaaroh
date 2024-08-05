//
//  Booking.swift
//  Samaaroh
//
//  Created by WCTM on 30/07/24.
//

import UIKit

class Booking: UIViewController {

    @IBOutlet weak var Movie: UIImageView!
    var movieName = ""
    
    
    @IBOutlet weak var Description: UILabel!
    var Describe = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Movie.image = UIImage(named: movieName)
        Description.text = Describe
    }
    

 
    @IBAction func Tickets(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BookingConfirm") as! BookingConfirm
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
