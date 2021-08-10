//
//  ViewController.swift
//  Math
//
//  Created by D_Key on 28.07.2021.
//

import UIKit
import CoreData
public class DB {
    public static var id = Int()

}


struct Levels{
    let id : Int
    let stars: Int
    let isLock: Bool
}

struct Tasks{
    let title : String
    let color1: String
    let color2: String
    let img: String
    let state1: Int16
    let state2: Int16
    let isLock: Int16

}



 class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
     
     private var task = [Tasks]()
     var dataStoreManager = DataStoreManager()
     
     @IBOutlet weak var tableView: UITableView!
  

     
     var selectedIndex: IndexPath = IndexPath(row: 0, section: 1)
     
    
     override func viewDidLoad() {
        super.viewDidLoad()
         tableView.register(TableViewCell1.nib(), forCellReuseIdentifier: TableViewCell1.identifier)
        tableView.delegate = self
        tableView.dataSource = self
       
        
        
        dataStoreManager.addTask(title: "считаем до 5", isLock: false, color1: "F1D9A3", color2: "E9C576", img: "TaskGroup_1", levels: [Levels(id: 1, stars: 3, isLock: false),Levels(id: 2, stars: 2, isLock: true),Levels(id: 2, stars: 2, isLock: true)])

        
        
        
        
        
      
//        dataStoreManager.addTask(title: "считаем до 5", isLock: false, color1: "F1D9A3", color2: "E9C576", img: "TaskGroup_1", levels: [Levels(id: 1, stars: 3, isLock: false),Levels(id: 2, stars: 2, isLock: true)])
//
//
//        dataStoreManager.addTask(title: "считаем до 10", isLock: false,  color1: "BD95CB", color2: "9973A6", img: "TaskGroup_2", levels: [Levels(id: 1, stars: 3, isLock: false),Levels(id: 2, stars: 2, isLock: true)])
//
//        dataStoreManager.addTask(title: "Декомпозиция до 10", isLock: false, color1: "A3F1E8", color2: "7ACBC1", img: "TaskGroup_3", levels: [Levels(id: 1, stars: 3, isLock: false),Levels(id: 2, stars: 2, isLock: true)])
//
//        dataStoreManager.addTask(title: "Сравнение", isLock: false,  color1: "6C95E3", color2: "6082C2", img: "TaskGroup_4", levels: [Levels(id: 1, stars: 3, isLock: false),Levels(id: 2, stars: 2, isLock: true)])
//
//        dataStoreManager.addTask(title: "Сложение с подсказками", isLock: true,  color1: "FBC38F", color2: "E1A974", img: "TaskGroup_5", levels: [Levels(id: 1, stars: 3, isLock: false),Levels(id: 2, stars: 2, isLock: false),Levels(id: 3, stars: 2, isLock: false)])
//
       
      
    
    
      
        
        
    }
     
 
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    
       // getAllItems()
       
    
        
    }
//     func getAllItems(){
//         do{
//             task = try dataStoreManager.viewContext.fetch(Task.fetchRequest())
//
//             DispatchQueue.main.async {
//                 self.tableView.reloadData()
//             }
//         }
//         catch {
//
//         }
//         }
     
     
     
     
     //TABLE - table
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
         return task.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
             
         let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell1.identifier, for: indexPath ) as! TableViewCell1
  
         return cell
         }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         
     

         if (selectedIndex == indexPath){

             return CGFloat(440)
         }else{

            return CGFloat(210)

         }
        
         
     }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         if (task[indexPath.row].isLock == 0) {
         selectedIndex = indexPath
         DB.id = selectedIndex.row
         tableView.beginUpdates()
         tableView.reloadRows(at: [selectedIndex], with: .fade)
         tableView.endUpdates()
         
         }
         
    func numberOfSections(in tableView: UITableView) -> Int {
             return 1
         }
}



    
 
    
    
       
            
         
            
//            switch indexPath.item {
//            case 0,1:
//                openViewController(id: "task1")
//                break
//            case 2:
//                openViewController(id: "task2")
//                break
//            case 3:
//                openViewController(id: "task3")
//                break
//            case 4:
//                openViewController(id: "task4")
//                break
//            default:
//                break
//            }

            
           
          
        }
        
    
    
   
    
    
  









// public class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
//
//   var level1 = Levels(id: 1, stars: 3)
//
//
//
//    @IBOutlet weak var Title: UILabel!
//    @IBOutlet weak var Score: UILabel!
//    @IBOutlet weak var ProgressBar: UIProgressView!
//    @IBOutlet weak var Img: UIImageView!
//    @IBOutlet weak var isLock: UIImageView!
//    @IBOutlet weak var Panel: UIView!
//    @IBOutlet weak var ContentView: UIView!
//    @IBOutlet weak var Panel2: UIView!
//    @IBOutlet weak var CollectionViewLevel: UICollectionView!
//
//
//
//    public override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//
//
//        CollectionViewLevel.delegate = self
//        CollectionViewLevel.dataSource = self
//    }
//
//    public override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//
//
//    }
//
//    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        return self.task.Levels.count
//    }
//
//    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if let cell = CollectionViewLevel.dequeueReusableCell(withReuseIdentifier: "Collect1",for: indexPath) as? CollectionViewCell{
//
//            return cell
//
//        }
//        return UICollectionViewCell()
//    }
//
//
//
//
//    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//
//
//    }
//
//
//    var task: Tasks!{
//        didSet{
//            self.Title.text = self.task.title
//            self.Score.text = "\(self.task.scoreOne) / \(self.task.scoreMax)"
//           // self.ProgressBar.progress = Float(self.task.scoreMax/self.task.scoreOne)
//
//            self.Img.image = UIImage(named: self.task.img)
//
//            if !self.task.isLock {
//                self.isLock.isHidden = true
//                self.Score.isHidden = false
//            }
//            else{
//                self.isLock.isHidden = false
//                self.Score.isHidden = true
//            }
//
//            self.Panel.backgroundColor = UIColor().colorFromHex(self.task.color1)
//            self.Panel2.backgroundColor = UIColor().colorFromHex(self.task.color1)
//            self.ProgressBar.trackTintColor = UIColor().colorFromHex(self.task.color2)
//            self.Title.shadowColor = UIColor().colorFromHex(self.task.color2)
//            CollectionViewLevel.backgroundColor = UIColor().colorFromHex(self.task.color1)
//
//
//
//
//            }
//
//
//
//        }
//


















