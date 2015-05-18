//
//  IntroViewController.swift
//  carouselapp
//
//  Created by Carlos Cheung on 5/15/15.
//  Copyright (c) 2015 carloscheung. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    
   
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    
    @IBOutlet weak var introTile1: UIImageView!
    @IBOutlet weak var introTile2: UIImageView!
    @IBOutlet weak var introTile3: UIImageView!
    @IBOutlet weak var introTile4: UIImageView!
    @IBOutlet weak var introTile5: UIImageView!
    @IBOutlet weak var introTile6: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // scrollView.contentSize = introImageView.image!.size
        
        scrollView.delegate = self
        
        scrollView.contentSize = CGSize(width: 320, height: 1136)
        
        // Do any additional setup after loading the view.
    }

    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        // This method is called as the user scrolls
        println("scrolling")
        
        
        UIView.animateWithDuration(0.4, animations: {
            // This causes first view to fade in and second view to fade out
            self.introTile1.alpha = 1
            self.introTile2.alpha = 1
            self.introTile3.alpha = 1
            self.introTile4.alpha = 1
            self.introTile5.alpha = 1
            self.introTile6.alpha = 1
        })
        
        
        introTile1.transform = CGAffineTransformMakeRotation(CGFloat(45 * M_PI / 180))
        introTile2.transform = CGAffineTransformMakeRotation(CGFloat(45 * M_PI / 180))
        introTile3.transform = CGAffineTransformMakeRotation(CGFloat(45 * M_PI / 180))
        introTile4.transform = CGAffineTransformMakeRotation(CGFloat(45 * M_PI / 180))
        introTile5.transform = CGAffineTransformMakeRotation(CGFloat(45 * M_PI / 180))
        introTile6.transform = CGAffineTransformMakeRotation(CGFloat(45 * M_PI / 180))
   
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
