//
//  ConversationsViewController.swift
//  carouselapp
//
//  Created by Carlos Cheung on 5/17/15.
//  Copyright (c) 2015 carloscheung. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func backButton(sender: AnyObject) {
        // dismissViewControllerAnimated(true, completion: nil)
        navigationController!.popViewControllerAnimated(true)
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
