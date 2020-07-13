//
//  ViewController.swift
//  Project: PatientSection
//  Input: NONE
//  Output:Patient name and whether they have a fever or not.
//  Created by Jocelyn M. Rodriguez on 4/14/20.
//  Copyright © 2020 Jocelyn M. Rodriguez. All rights reserved.


import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // the screen is not editable
        //textView.isEditable = false
        
        // the background view color is yellow
        view.backgroundColor = .yellow
        
        // the font size is 19
        label.font = .systemFont(ofSize: 19)
        
        // the background color of text
        label.backgroundColor = .lightGray
        
        // the text color is black
        label.textColor = .black
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let s: String = textField.text!;
        let d: Double = Double (s)!;
        
        if d > 100.4 {
            label.text = " \(d) is a fever. "
            view.backgroundColor = .red;
            
        }else{
            label.text = " \(d) is normal. "
            view.backgroundColor = .green;
            
        }
        
    }
    
}

