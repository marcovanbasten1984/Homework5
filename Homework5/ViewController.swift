//
//  ViewController.swift
//  Homework5
//
//  Created by Kostia Prytkov on 8/20/21.
//  Copyright © 2021 Kostia Prytkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  //  @IBOutlet weak var loginButton: UIButton!
    
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        
        loginButton.isEnabled = false
        // let login = sender.text ?? ""
        
        if (loginTextField.text?.contains("@"))! {
            loginButton.isEnabled = true
        }
            
       
    
      func loginButtonTapped() {
      /*  if ((passwordTextField.text?.isEmpty))! {
            
            let alert = UIAlertController(title: "Alert", message: "Enter correct credentials", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        
        
        }  else {
       */
            let storyboard = UIStoryboard(name: "Main", bundle: .main)
            let mainScreenViewController = storyboard.instantiateViewController(withIdentifier: "MainScreenViewController")
            present(mainScreenViewController, animated: true)
        
        }
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    }


