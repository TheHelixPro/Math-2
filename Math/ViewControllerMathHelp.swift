//
//  ViewControllerMathHelp.swift
//  Math
//
//  Created by D_Key on 29.07.2021.
//

import UIKit
import CoreData
class ViewControllerMathHelp: UIViewController {


    var dataStoreManager = DataStoreManager()
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
    //  dataStoreManager.addTask()
        
    }
    

    @IBAction func back(_ sender: Any) {
        self.openViewController(id: "ViewController")
    }
    

}
