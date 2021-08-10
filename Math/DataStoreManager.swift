//
//  DataStoreManager.swift
//  Math
//
//  Created by D_Key on 02.08.2021.
//

import Foundation
import CoreData



class DataStoreManager{

lazy var persistentContainer: NSPersistentContainer = {
  
    let container = NSPersistentContainer(name: "Math")
    container.loadPersistentStores(completionHandler: { (storeDescription, error) in
        if let error = error as NSError? {
        
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    })
    return container
}()

// MARK: - Core Data Saving support
    lazy var viewContext: NSManagedObjectContext = {
        
        return persistentContainer.viewContext
        
    }()

func saveContext () {
    let context = persistentContainer.viewContext
    if context.hasChanges {
        do {
            try context.save()
        } catch {
          
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}


    func addTask(title: String, isLock: Bool, color1: String, color2 : String, img: String , levels:[Levels]) -> Task {
//    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Task")
//    fetchRequest.predicate = NSPredicate(format: "isMain = true")
//    if let tasks = try? viewContext.fetch(fetchRequest) as? [Task],!tasks.isEmpty {
//        return tasks.first!
//    }
//    else {

    let task = Task(context: viewContext)
        task.title = title
        task.isLock = isLock
        task.color1 = color1
        task.color2 =  color2
        task.img = img
        task.isMain = true
       
        
      
        for i in 0...task.levels!.count {
            let level = Level(context: viewContext)

            level.id = Int16(levels[i].id)
            level.stars = Int16(levels[i].stars)
            level.isLock = Bool(levels[i].isLock)
            level.task = task
           
        }
    
    do{
        try viewContext.save()
        print (viewContext)
        
    }catch let error{
        
    print("Error: \(error)")
    }
    
    
    
    return task
   // }
}
    func AllTask() -> [Task]  {
        let fetchReuest:NSFetchRequest<Task> = Task.fetchRequest()
        
        let tasks = try? viewContext.fetch(fetchReuest)
        
        
      
        
        let i = 0
     
        if ((tasks?.isEmpty) == true){
            
            print("Записи не найдены")
            
        }else{
            for i in 0...tasks!.count-1{
                
                
                
                
                     //  print("-----\(i)-----")
                let re = (tasks?[i].levels)
                print(re)
//
            }
        }
  
        return tasks ?? []
    }
    
    func UpdateTask(with name:String) {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Task")
        fetchRequest.predicate = NSPredicate(format: "isMain = true")
        
        if let tasks =  try? viewContext.fetch(fetchRequest) as? [Task]{
            guard let mainTask = tasks.first else { return }
            mainTask.title = name
            
            try? viewContext.save()
        }
       
        //  guard let name = textFiel.text else { return  }
        //  dataStoreManager.updateMainUser(with: name)
    }
   
  
    
    
    func removeMainUser(){
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Task")
        fetchRequest.predicate = NSPredicate(format: "isMain = true")
        
        if let tasks = try? viewContext.fetch(fetchRequest) as? [Task] {
            
            guard let mainTask = tasks.first else { return }
            viewContext.delete(mainTask)
            try? viewContext.save()
            
            
            
        }

    }
    
    

}
