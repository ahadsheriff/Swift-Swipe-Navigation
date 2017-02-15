//
//  ViewController.swift
//  SwipeNavigation
//
//  Created by Ahad Sheriff on 6/24/16.
//  Copyright © 2016 Ahad Sheriff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let vc1 = FirstViewController(nibName: "FirstViewController", bundle: nil)
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        
        let vc2 = SecondViewController(nibName: "SecondViewController", bundle: nil)
        var frame2 = vc2.view.frame
        // Will be displayed one screen width away from the original view
        frame2.origin.x = self.view.frame.size.width
        vc2.view.frame = frame2
        self.addChildViewController(vc2)
        self.scrollView.addSubview(vc2.view)
        vc2.didMoveToParentViewController(self)
        
        
        let vc3 = ThirdViewController(nibName: "ThirdViewController", bundle: nil)
        var frame3 = vc3.view.frame
        // Width multiplied by two because the frame should be two screens away from original
        frame3.origin.x = self.view.frame.size.width * 2
        vc3.view.frame = frame3
        self.addChildViewController(vc3)
        self.scrollView.addSubview(vc3.view)
        vc3.didMoveToParentViewController(self)
        
        /*
         
        // Width multiplied by the number of view controllers you have so that the content size is
        // Each view is the size of one iPhone screen
        // Height is subtracted by 66 because we are using a Navigation controller and we want to 
        // start the view below the navigation bar.
         
        */
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height - 66)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

