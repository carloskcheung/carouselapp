//
//  TimelineViewController.swift
//  carouselapp
//
//  Created by Carlos Cheung on 5/17/15.
//  Copyright (c) 2015 carloscheung. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feedView: UIImageView!
    @IBOutlet weak var learnMoreView: UIImageView!
    @IBOutlet weak var exitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 1564)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func exitMoreViewButton(sender: AnyObject) {
        
        exitButton.alpha = 0
        learnMoreView.alpha = 0
        
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
