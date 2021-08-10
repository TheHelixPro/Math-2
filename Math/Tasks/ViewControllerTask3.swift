//
//  ViewControllerTask3.swift
//  Math
//
//  Created by D_Key on 30.07.2021.
//

import UIKit

class ViewControllerTask3: UIViewController {
    @IBOutlet weak var State: UICollectionView!
    @IBOutlet weak var One: UILabel!
    @IBOutlet weak var Two: UILabel!
    @IBOutlet weak var RE: UILabel!
    @IBOutlet weak var er: UIImageView!
    

    @IBOutlet weak var but_1: UIButton!
    @IBOutlet weak var but_2: UIButton!
    
    
    
    @IBOutlet weak var Sel_1: UIButton!
    @IBOutlet weak var Sel_2: UIButton!
    @IBOutlet weak var Sel_3: UIButton!
    
    @IBOutlet weak var Next_good: UIButton!
    @IBOutlet weak var Next_bad: UIButton!
    
    @IBOutlet weak var sl_good: UIButton!
    @IBOutlet weak var rv_good: UIButton!
    @IBOutlet weak var pr_good: UIButton!
    
    @IBOutlet weak var ret: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func back(_ sender: Any) {
        self.openViewController(id: "ViewController")
    }
    
    @IBAction func but1(_ sender: Any) {
        Sel_1.isHidden = false
        Sel_2.isHidden = true
        Sel_3.isHidden = true
        but1_click()
        RE.textColor = UIColor().colorFromHex("429FBB")
        RE.text = ">"
    }
    
    @IBAction func but2(_ sender: Any) {
        Sel_1.isHidden = true
        Sel_2.isHidden = false
        Sel_3.isHidden = true
        but1_click()
        RE.textColor = UIColor().colorFromHex("429FBB")
        RE.text = "="
    }
    
   
    
    @IBAction func but3(_ sender: Any) {
        Sel_1.isHidden = true
        Sel_2.isHidden = true
        Sel_3.isHidden = false
        but1_click()
  
        RE.text = "<"
    }
    func but1_click(){
        but_1.isHidden = true
        but_2.isHidden = false
    }
    var Sc = false
    @IBAction func Next(_ sender: Any) {
        but_2.isHidden = true
        switch RE.text {
        case "<":
            er.isHidden = false
            pr_good.isHidden = false
            break
        case ">":
            Sc = true
           
            break
        case "=":
            er.isHidden = false
        
            break
        default:
            break
        }
        if !Sc{
            
            
            Next_bad.isHidden = false
            Next_good.isHidden = true
            ret.isHidden = false
            
        }else{
            
            switch RE.text {
            case "<":
            
                pr_good.isHidden = false
                break
            case ">":
                sl_good.isHidden = false
                break
            case "=":
                rv_good.isHidden = false
                break
            default:
                break
            }
            RE.textColor = UIColor().colorFromHex("76A32E")
            Next_bad.isHidden = true
            Next_good.isHidden = false
            ret.isHidden = true
        }
        
        
    }
   
    @IBAction func good(_ sender: Any) {
    }
    @IBAction func bad(_ sender: Any) {
    }
}
