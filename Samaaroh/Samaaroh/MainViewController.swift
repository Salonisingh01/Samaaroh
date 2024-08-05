//
//  MainViewController.swift
//  Samaaroh
//
//  Created by WCTM on 29/07/24.
//

import UIKit

class MainViewController: UIViewController,UICollectionViewDelegate ,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var Collection: UICollectionView!
    
    
    @IBOutlet weak var usernames: UILabel!
    var username = ""
    
    
    let shows = ["img1","img2","img3","img4","img5","img6","img7","img8","img9","img10","img11","img12","img13","img14"]
    
    
    let explain = ["Gulab is fed up with his bachelorhood and follows the path of manifestation suggested by his friends but finds himself stuck between two girls- Rose and Rosy. Who will he choose or will he get rejected by both?","  Housefull 5 is an entertaining comedy drama written by Sajid Nadiadwala , while the direction was done by Tarun Mansukhani . The movie's stars, Akshay Kumar, Abhishek Bachchcan, and Riteish Deshmukh , have been confirmed as the cast of the fifth installment of Comedy Frenzy. Sajid Nadiadwala produced this film under the banner of Nadiadwala Grandson Entertainment Pvt. Ltd.","Ramasamy attended school for five years after which he joined his father's trade at the age of 12. He used to listen to Tamil Vaishnavite gurus who gave discourses in his house enjoying his father's hospitality. At a young age, he began questioning the apparent contradictions in the Hindu mythological stories.","Tommy receives an invitation to win $1 million by playing a game where he must outwit hunters attempting to kill him. He realises the hunters can only attack him when he's alone, but none of his friends and family believe the game is real.","The Raja Saab is an upcoming 2025 Indian Telugu-language romantic comedy horror film written and directed by Maruthi. It is produced by T. G. Vishwa Prasad and Vivek Kuchibotla under People Media Factory.","Bhool Bhulaiyaa 3 is an upcoming 2024 Indian Hindi-language horror-comedy film written and directed by Anees Bazmee and produced by Bhushan Kumar and Krishan Kumar under the banner of T-Series Films; and Cine1 Studios","The weekend Party on a Saturday Night with DJ Aaron Joseph India at a Nightclub with Positive Vibes, Smiley faces ","#LiSA LiVE is Smile Always ASiA TOUR 2024” i","Live Music concert ","Jyn's father is forcibly taken by the Galactic Empire to help them complete the Death Star. When she grows up, she joins a group of resistance fighters who aim to steal the Empire's blueprints."]
    
    
    var myIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernames.text = username
        Collection.dataSource = self
        Collection.delegate = self
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shows.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = Collection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DetailsCollectionViewCell;
        cell.myshows?.image = UIImage(named: shows [(indexPath as NSIndexPath).row])
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayoout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-15)/2
        return CGSize(width: size, height:size + (size/2))
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myIndex = indexPath.row
        if(myIndex == 0){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
        
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if(myIndex == 1){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if(myIndex == 2){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if(myIndex == 3){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if(myIndex == 4){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if(myIndex == 5){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            
            vc.movieName = shows[myIndex]
          
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if(myIndex == 6){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if(myIndex == 7){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if(myIndex == 8){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if(myIndex == 9){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if(myIndex == 10){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if(myIndex == 11){
            let vc = self.storyboard?.instantiateViewController(identifier: "Booking") as! Booking
            vc.movieName = shows[myIndex]
            vc.Describe = explain[myIndex]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    @IBAction func MoviePage(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Movies") as! Movies
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func TicketPage(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TicketsViewController") as! TicketsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func UserProfile(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

