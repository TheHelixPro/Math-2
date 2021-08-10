//
//  TaskTableViewCell.swift
//  Math
//
//  Created by D_Key on 30.07.2021.
//

import UIKit
import CoreData

class TaskTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

      
        return task.levels?.count ?? 1
        
           
       
        
       }
   
       public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
           var cell = UICollectionViewCell()
           if (task.levels == nil) {
               
               
                cell = CollectionViewLevel.dequeueReusableCell(withReuseIdentifier: "Collect1",for: indexPath) as! CollectionViewCell
               vv1(cell: cell as! CollectionViewCell, index: indexPath)
               
           }
           else{
                cell = CollectionViewLevel.dequeueReusableCell(withReuseIdentifier: "Collect2",for: indexPath )as! LockCollectionViewCell
               
           }
           
           
           return cell
               
                
               
           
        
          
       }
    func vv2(cell: LockCollectionViewCell , index: IndexPath){
        
        
        
    }
       func vv1(cell: CollectionViewCell , index: IndexPath){
         
         //  cell.NumLevel.text = String(task.levels[task.levels[index.row]].id)
           let tasa = (task.levels ?? []) as! Set<Level>
           switch tasa.first?.id{

                    case 1:
                        cell.Star_1.isHidden = false
                     break
                    case 2:
                        cell.Star_1.isHidden = false
                        cell.Star_2.isHidden = false
                     break

                    case 3:
                        cell.Star_1.isHidden = false
                        cell.Star_2.isHidden = false
                        cell.Star_3.isHidden = false
                     break



                    default:
                        break
                    }

                }
   
   
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
   
         
           switch DB.id{
           case 0:
               let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let vc = storyboard.instantiateViewController(withIdentifier: "task1")
               
             
               
               
              break
           case 1:
              break
           case 2:
              break
               
               
               
               
           default:
               break
               
               
               
           }
                     
                    
                   
                 }
   
       
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        var ini = false
        if(ini == false){
        CollectionViewLevel.delegate = self
        CollectionViewLevel.dataSource = self
            ini = true
        }
    }

    
    
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var ProgressBar: UIProgressView!
    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var isLock: UIImageView!
    @IBOutlet weak var Panel: UIView!
    @IBOutlet weak var ContentView: UIView!
    @IBOutlet weak var Panel2: UIView!
    @IBOutlet weak var CollectionViewLevel: UICollectionView!
    
    
   
    var task: Task!{
        didSet{
            self.Title.text = self.task.title
//            self.Score.text = "\(self.task.scoreOne) / \(self.task.scoreMax)"
           // self.ProgressBar.progress = Float(self.task.scoreMax/self.task.scoreOne)
            
            self.Img.image = UIImage(named: task.img ?? "")
            
            if !self.task.isLock {
                self.isLock.isHidden = true
                self.Score.isHidden = false
            }
            else{
                self.isLock.isHidden = false
                self.Score.isHidden = true
            }
            
            self.Panel.backgroundColor = UIColor().colorFromHex(self.task.color1 ?? "")
            self.Panel2.backgroundColor = UIColor().colorFromHex(self.task.color1 ?? "")
         //   self.Collection.backgroundColor = UIColor().colorFromHex(self.task.color1)
            self.ProgressBar.trackTintColor = UIColor().colorFromHex(self.task.color2 ?? "")
            self.Title.shadowColor = UIColor().colorFromHex(self.task.color2 ?? "")
            CollectionViewLevel.backgroundColor = UIColor().colorFromHex(self.task.color1 ?? "")
            }
        
            
           
        }
}
public class CollectionViewCell: UICollectionViewCell {
  
    
    
    @IBOutlet weak var NumLevel: UILabel!
    @IBOutlet weak var Star_1: UIImageView!
    @IBOutlet weak var Star_2: UIImageView!
    @IBOutlet weak var Star_3: UIImageView!
    
 
    
    
}
public class LockCollectionViewCell: UICollectionViewCell {
  
    @IBOutlet weak var Lock: UIImageView!
    
 
}
