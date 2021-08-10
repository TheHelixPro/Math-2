//
//  ViewControllerTask4.swift
//  Math
//
//  Created by D_Key on 01.08.2021.
//

import UIKit

class ViewControllerTask4: UIViewController {

    @IBOutlet weak var number: UIButton!

    @IBOutlet weak var err_next: UIButton!
    
    @IBOutlet weak var Button_next: UIButton!
    
    @IBOutlet weak var ret: UIButton!
    @IBOutlet weak var Nextb: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var i = 0
    @IBAction func but(_ sender: Any) {
       
        number.setTitle(String(i), for: .normal)
        
        if(i == 9){
            i=0
        }else{
        i+=1
        }
    }
    
   
    @IBAction func Next(_ sender: Any) {
        print(number.currentTitle ?? "")
        let res = "8"
        
        if(res == number.currentTitle){
        Button_next.isHidden = true
        Nextb.isHidden = false
        number.tintColor = UIColor().colorFromHex("76A32E")
        }else
        {
            Button_next.isHidden = true
            err_next.isHidden = false
            ret.isHidden = false
         
        }
    
        
    }
    
    @IBAction func retry(_ sender: Any) {
        
    }
    @IBAction func back(_ sender: Any) {  self.openViewController(id: "ViewController")
    }
}
