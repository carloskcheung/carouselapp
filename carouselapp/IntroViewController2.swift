//
//  IntroViewController2.swift
//  carouselapp
//
//  Created by Carlos Cheung on 5/16/15.
//  Copyright (c) 2015 carloscheung. All rights reserved.
//

import UIKit

class IntroViewController2: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollIntroView: UIScrollView!
    
    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value: Float, r1min: Float, r1max: Float, r2min: Float, r2max: Float) -> Float {
        var ratio = (r2max - r2min) / (r1max - r1min)
        return value * ratio + r2min - r1min * ratio
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollIntroView.delegate = self
        
        scrollIntroView.contentSize = CGSize(width: 320, height: 1136)
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func scrollViewDidScroll(scrollView: UIScrollView!) {
        // This method is called as the user scrolls
        println("scroll did happen")
        var offset = Float(scrollIntroView.contentOffset.y)
        
        
        //content offset: 0->568
        //x offset: -30->0
        //y offset: -285->0
        
        
        var tx = convertValue(offset, r1min: 0, r1max: 568, r2min: -30, r2max: 0)
        var ty = convertValue(offset, r1min: 0, r1max: 568, r2min: -285, r2max: 0)
        
        var scale = convertValue(offset, r1min: 0, r1max: 568, r2min: 1, r2max: 1)
        
        var rotation = convertValue(offset, r1min: 0, r1max: 568, r2min: -10, r2max: 0)
        
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        tile1View.transform = CGAffineTransformScale(tile1View.transform, CGFloat(scale), CGFloat(scale))
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        
        //////////// Tile 2
        var tx2 = convertValue(offset, r1min: 0, r1max: 568, r2min: 75, r2max: 0)
        var ty2 = convertValue(offset, r1min: 0, r1max: 568, r2min: -240, r2max: 0)
        
        var scale2 = convertValue(offset, r1min: 0, r1max: 568, r2min: 1.65, r2max: 1)
        
        var rotation2 = convertValue(offset, r1min: 0, r1max: 568, r2min: -10, r2max: 0)
        
        tile2View.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
       tile2View.transform = CGAffineTransformScale(tile2View.transform, CGFloat(scale2), CGFloat(scale2))
        tile2View.transform = CGAffineTransformRotate(tile2View.transform, CGFloat(Double(rotation2) * M_PI / 180))

        
        
        //////////// Tile 3
        var tx3 = convertValue(offset, r1min: 0, r1max: 568, r2min: -66, r2max: 0)
        var ty3 = convertValue(offset, r1min: 0, r1max: 568, r2min: -415, r2max: 0)
        
        var scale3 = convertValue(offset, r1min: 0, r1max: 568, r2min: 1.7, r2max: 1)
        
        var rotation3 = convertValue(offset, r1min: 0, r1max: 568, r2min: 10, r2max: 0)
        
        tile3View.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        tile3View.transform = CGAffineTransformScale(tile3View.transform, CGFloat(scale3), CGFloat(scale3))
        tile3View.transform = CGAffineTransformRotate(tile3View.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        
        //////////// Tile 4
        var tx4 = convertValue(offset, r1min: 0, r1max: 568, r2min: 10, r2max: 0)
        var ty4 = convertValue(offset, r1min: 0, r1max: 568, r2min: -408, r2max: 0)
        
        var scale4 = convertValue(offset, r1min: 0, r1max: 568, r2min: 1.6, r2max: 1)
        
        var rotation4 = convertValue(offset, r1min: 0, r1max: 568, r2min: 10, r2max: 0)
        
        tile4View.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        tile4View.transform = CGAffineTransformScale(tile4View.transform, CGFloat(scale4), CGFloat(scale4))
        tile4View.transform = CGAffineTransformRotate(tile4View.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        //////////// Tile 5
        var tx5 = convertValue(offset, r1min: 0, r1max: 568, r2min: -200, r2max: 0)
        var ty5 = convertValue(offset, r1min: 0, r1max: 568, r2min: -480, r2max: 0)
        
        var scale5 = convertValue(offset, r1min: 0, r1max: 568, r2min: 1.65, r2max: 1)
        
        var rotation5 = convertValue(offset, r1min: 0, r1max: 568, r2min: 10, r2max: 0)
        
        tile5View.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        tile5View.transform = CGAffineTransformScale(tile5View.transform, CGFloat(scale5), CGFloat(scale5))
        tile5View.transform = CGAffineTransformRotate(tile5View.transform, CGFloat(Double(rotation5) * M_PI / 180))

        //////////// Tile 6
        var tx6 = convertValue(offset, r1min: 0, r1max: 568, r2min: -15, r2max: 0)
        var ty6 = convertValue(offset, r1min: 0, r1max: 568, r2min: -500, r2max: 0)
        
        var scale6 = convertValue(offset, r1min: 0, r1max: 568, r2min: 1.65, r2max: 1)
        
        var rotation6 = convertValue(offset, r1min: 0, r1max: 568, r2min: -10, r2max: 0)
        
        tile6View.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        tile6View.transform = CGAffineTransformScale(tile6View.transform, CGFloat(scale6), CGFloat(scale6))
        tile6View.transform = CGAffineTransformRotate(tile6View.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
        
        
        
        println("content offset: \(scrollIntroView.contentOffset.y)")
        
        
        
        
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
