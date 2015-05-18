//
//  ForgotPasswordViewController.swift
//  carouselapp
//
//  Created by Carlos Cheung on 5/17/15.
//  Copyright (c) 2015 carloscheung. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backButton(sender: AnyObject) {
        // dismissViewControllerAnimated(true, completion: nil)
        navigationController!.popViewControllerAnimated(true)
    }
    
    //Tap
    
    @IBAction func screenTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    //Button Action
    @IBAction func submitForgotButton(sender: AnyObject) {
        
        
        if emailField.text.isEmpty {
            var alertView = UIAlertView(title: "Invalid", message: "Please enter an Email ", delegate: self, cancelButtonTitle: "OK")
            alertView.show()

        }
        else {
            
            var alertView = UIAlertView(title: "Thanks", message: "We've sent instructions to reset your password", delegate: self, cancelButtonTitle: "Awesome")
            alertView.show()
            
            emailField.text = ""
        }
        
        
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
