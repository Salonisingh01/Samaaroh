//
//  BookingConfirm.swift
//  Samaaroh
//
//  Created by WCTM on 30/07/24.
//

import UIKit

class BookingConfirm: UIViewController ,UITableViewDataSource ,UITableViewDelegate  {

    let list = ["9:00","9:30","10:00","10:30","11:00","11:30","12:00","13:00","14:40","16:00","17:30","18:00","20:00",]
    
    

    
    @IBOutlet weak var table: UITableView!
    
    var myindex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = list[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myindex = indexPath.row
        
        }
        
    @IBAction func ChooseSeats(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "selectSeatsViewController") as! selectSeatsViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
