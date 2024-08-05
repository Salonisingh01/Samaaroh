//
//  ViewController.swift
//  Samaaroh
//
//  Created by WCTM on 29/07/24.
//

import UIKit
import FirebaseCore
import FirebaseDatabase

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    var UserN = [String]()
    var Pass = [String]()
    
    var ref : DatabaseReference?
    var databasehandle : DatabaseHandle?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        databasehandle = ref?.child("User Auth").observe(.childAdded, with: {(snapshot) in
            let vaildID = snapshot.value as? String
            if let actualId = vaildID{
                self.UserN.append(actualId)
            }
            let vaildPass = snapshot.value as? String
            if let actualPass = vaildPass{
                self.Pass.append(actualPass)
            }
        })
        
        
    }
    
    @IBAction func Login(_ sender: UIButton) {
        if(userName.text != "" && password.text != "" ) {
            let limitset = UserN.count - 1
            for i in 0...limitset{
                if(userName.text == UserN[i]){
                    if(password.text == Pass[i]){
                        let vc  = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
                        self.navigationController?.pushViewController(vc, animated: true)
                        
                    }
                }
            }
            
        }
        
    }}

