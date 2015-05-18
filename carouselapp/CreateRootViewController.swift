//
//  CreateRootViewController.swift
//  carouselapp
//
//  Created by Carlos Cheung on 5/17/15.
//  Copyright (c) 2015 carloscheung. All rights reserved.
//

import UIKit

class CreateRootViewController: UIViewController {

    
    @IBOutlet weak var createTextView: UIView!
    @IBOutlet weak var createButtonView: UIView!
    @IBOutlet weak var createFormView: UIView!
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardwillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardwillHide:", name: UIKeyboardWillHideNotification, object: nil)
        

        
        // Do any additional setup after loading the view.
    }
    
    
    func keyboardwillShow (notification: NSNotification) {
        
        self.createTextView.alpha = 0
        
        UIView.animateWithDuration(0.4, animations: {
            self.createButtonView.center.y = 300
            self.createFormView.center.y = 150
            self.createButtonView.alpha = 1
            self.createFormView.alpha = 1
        })
        
    }
    
    func keyboardwillHide (notification: NSNotification) {
        
        self.createTextView.alpha = 1
        
        UIView.animateWithDuration(0.4, animations: {
            self.createButtonView.center.y = 471
            self.createFormView.center.y = 236
            self.createButtonView.alpha = 1
            self.createFormView.alpha = 1
        })
    }
    
    
    
    // TERMS 
    // opens up another URL in a webview - safari
    
    @IBAction func termsButton(sender: AnyObject) {
     
        UIApplication.sharedApplication().openURL(NSURL(string:"https://www.dropbox.com/terms?mobile=1")!)
        
    }
    
    //CHECK BOX Button

    @IBAction func onButton(sender: UIButton) {
        sender.selected = true
    }
    
    //TAP OUT
    
    @IBAction func screenTap1(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func screenTap2(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    
    //Back Button
    @IBAction func backButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func createAccountButton(sender: AnyObject) {
    
        
        
        if emailField.text.isEmpty || passwordField.text.isEmpty || firstNameField.text.isEmpty || lastNameField.text.isEmpty {
            var alertView = UIAlertView(title: "Fill in information", message: "Please be sure to enter your first name, last name, email, and password", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
            
            
            
        }
        else {
            
            if emailField.text == "carlos@optimizely.com" && passwordField.text == "password" {
                println("valid login")
                
                // Delay for 2 seconds, then run the code between the braces.
                delay(2, { () -> () in
                    self.performSegueWithIdentifier("createSegue", sender: nil)
                })
                
            }
                
            else {
                var alertView = UIAlertView(title: "Invalid", message: "Please try again with a valid email", delegate: self, cancelButtonTitle: "OK")
                alertView.show()
                
                println("invalid login")
                
            }
        }
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
