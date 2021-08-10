//
//  ViewControllerTask1.swift
//  Math
//
//  Created by D_Key on 30.07.2021.
//

import UIKit

class ViewControllerTask1: UIViewController {
    @IBOutlet weak var TabView: UIView!
    @IBOutlet weak var CenterView: UIView!
    
    @IBOutlet weak var Tasks: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
      shadow(view: TabView, radius: 22.0)
        shadow(view: CenterView, radius: 11.0)
    }
    
    private func shadow(view: UIView, radius: Double){
       
        view.layer.cornerRadius = radius
        view.clipsToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 7.0
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
        let cgPath = UIBezierPath(roundedRect: view.bounds, byRoundingCorners: [.allCorners], cornerRadii: CGSize(width: radius, height: radius)).cgPath
        view.layer.shadowPath = cgPath
       
    }
     
 
   
    @IBAction func back(_ sender: Any) {
        self.openViewController(id: "ViewController")
    }
    
    
    
}
extension ViewControllerTask1 : UICollectionViewDelegate{}

extension ViewControllerTask1 : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
    
}





