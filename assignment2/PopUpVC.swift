//
//  PopUpVC.swift
//  assignment2
//
//  Created by Alex Viney on 30/4/18.
//  Copyright © 2018 Alex Viney. All rights reserved.
//

import UIKit

class PopUpVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var listNameTextField: UITextField!
    
    let database : SQLiteDataBase = SQLiteDataBase(databaseName: "MyDatabase")
    
    var delegate: PopUpDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listNameTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        MakeNewList()
        dismiss(animated: true, completion: nil)
    }
    
    func MakeNewList() {
        var lists = [List]()
        print(listNameTextField.text!)
        database.insert(list: List(ID: 1, name: listNameTextField.text!))
        
        delegate?.popupValueEntered(value: "Hey")
        
    }

}
