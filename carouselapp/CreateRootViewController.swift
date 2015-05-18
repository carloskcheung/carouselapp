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
