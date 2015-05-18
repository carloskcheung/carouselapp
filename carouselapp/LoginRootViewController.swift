//
//  LoginRootViewController.swift
//  carouselapp
//
//  Created by Carlos Cheung on 5/16/15.
//  Copyright (c) 2015 carloscheung. All rights reserved.
//

import UIKit

class LoginRootViewController: UIViewController {

    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var buttonsView: UIView!
    @IBOutlet weak var loginTextView: UIView!
    @IBOutlet weak var navView: UIView!
    
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardwillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardwillHide:", name: UIKeyboardWillHideNotification, object: nil)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingPass(sender: AnyObject) {
    //password
        
        
    }
    
    
    @IBAction func onEditing(sender: AnyObject) {
    //email
        
    }
    
    @IBAction func onSignInButton(sender: AnyObject) {
        
        loadingView.startAnimating()
       
        
        if emailField.text.isEmpty || passwordField.text.isEmpty {
            var alertView = UIAlertView(title: "Email & Password", message: "Please enter a valid email & password", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
            
            
            println("empty login")
            loadingView.stopAnimating()
            
            
        }
        else {
            
            if emailField.text == "carlos@optimizely.com" && passwordField.text == "password" {
                println("valid login")
                
                // Delay for 2 seconds, then run the code between the braces.
                delay(2, { () -> () in
                    self.loadingView.stopAnimating()
                self.performSegueWithIdentifier("loginSegue", sender: nil)
                })
                
            }
                
            else {
                var alertView = UIAlertView(title: "Invalid", message: "Please re-enter the correct email & password", delegate: self, cancelButtonTitle: "OK")
                alertView.show()
                
                println("invalid login")
                loadingView.stopAnimating()
                
            }
            
        }
        
        
        
        
    }
    
    
    @IBAction func screenTap1(sender: AnyObject) {
        view.endEditing(true)
    // if screen is tapped it closes the keyboard
    }
    
    @IBAction func screenTap2(sender: AnyObject) {
        view.endEditing(true)
    // if screen is tapped it closes the keyboard
    }
    
    func keyboardwillShow (notification: NSNotification) {
        
        self.navView.alpha = 0
        
        UIView.animateWithDuration(0.4, animations: {
            self.buttonsView.center.y = 300
            self.loginTextView.center.y = 150
            self.buttonsView.alpha = 1
            self.loginTextView.alpha = 1
        })
        
    }
    
    func keyboardwillHide (notification: NSNotification) {
        
        self.navView.alpha = 1
        
        UIView.animateWithDuration(0.4, animations: {
            self.buttonsView.center.y = 471
            self.loginTextView.center.y = 236
            self.buttonsView.alpha = 1
            self.loginTextView.alpha = 1
        })
        
    }
    
    
    //BACK BUTTON
    //create a new link to IBACTION if you want to go back
    
//    @IBAction func backButton(sender: AnyObject) {
//        dismissViewControllerAnimated(true, completion: nil)
//        
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
