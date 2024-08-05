//
//  SignUpViewController.swift
//  Samaaroh
//
//  Created by WCTM on 29/07/24.
//

import UIKit
import FirebaseCore
import FirebaseDatabase

class SignUpViewController: UIViewController {

    @IBOutlet weak var Fname: UITextField!
    
    @IBOutlet weak var lname: UITextField!
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var cpassword: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var ref = Database.database().reference()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func SignUp(_ sender: UIButton) {
        if(Fname.text != "" && lname.text != "" && email.text != "" && username.text != "" && password.text != "" ){
            self.ref.child("Customer Details").child(username.text!).setValue([ "First name" : Fname.text , "Last name" : lname.text , "Email" : email.text , "username" : username.text , "Password" : password.text])
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
            let id = Fname.text
            vc.username += id!
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
        
    }
    

}
