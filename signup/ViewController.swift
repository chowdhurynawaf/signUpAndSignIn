//
//  ViewController.swift
//  signup
//
//  Created by as on 1/18/20.
//  Copyright © 2020 as. All rights reserved.
//

import UIKit

import Firebase


class ViewController: UIViewController {
    
    
   
    
    
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    var ref : DocumentReference!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
      
        
//        let db = Firestore.firestore()
//
//        db.collection("wine").addDocument(data: ["year":2019 , "type":"hola" ] )
//
        
//        ref = Firestore.firestore().document("document")
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func signIn(_ sender: Any) {
        
        
        
        Auth.auth().signIn(withEmail: name.text!, password: password.text!) { (bew, error) in
            
            
            if error != nil{
                print(error)
            }
            else{
                print("logged in ")
                
                self.performSegue(withIdentifier: "signInToHome", sender: nil)
            }
            
        }
        
        
        
    }
    
    
    @IBAction func saveBtn(_ sender: Any) {
        
       print("hitted")
        
//        guard let namevar = name.text , namevar.isEmpty else {return}
//
//        guard let passvar = password.text , passvar.isEmpty else {return}
        
        let dataToSaved : [String : Any] = ["name":name.text! ,"pass":password.text!]
        
        
//        ref.setData(dataToSaved){
//            (error) in
//
//
//            if let error = error{
//
//                print("you got an error")
//            }
//            else{
//                print("your data has been saveed")
//            }
//        }
        
        
        
        let db = Firestore.firestore()
        
        db.collection("new").addDocument(data: dataToSaved)
        
        
        
        print(dataToSaved)
        
        name.text = ""
        password.text = ""
        
        name.becomeFirstResponder()
        
        
        
        
            
          
            
            
            
            
        }
    }
    




