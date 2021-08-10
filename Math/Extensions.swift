//
//  Extensions.swift
//  Math
//
//  Created by D_Key on 30.07.2021.
//

import Foundation
import UIKit


extension UIViewController{
    
    func openViewController(id: String){
        
        if let viewControler = self.storyboard?.instantiateViewController(identifier: id){
            viewControler.modalPresentationStyle = .fullScreen
            viewControler.modalTransitionStyle = .crossDissolve
            self.present(viewControler, animated: true , completion:  nil)
            
        }
        
       
    }
    
    
}
extension UIColor{
   
    func colorFromHex(_ hex:String)->UIColor{
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#"){
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6{
            
            return UIColor.black
        }
        var rgb: UInt32 = 0
        Scanner(string: hexString).scanHexInt32(&rgb)
        return UIColor.init(red: CGFloat((rgb & 0xFF0000)>>16)/255.0 ,green:  CGFloat((rgb & 0x00FF00)>>8)/255.0, blue:  CGFloat(rgb & 0x0000FF)/255.0, alpha: 1.0)

    }
}
