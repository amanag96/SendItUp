//
//  ViewController.swift
//  War
//
//  Created by Aman Agrawal on 1/17/15.
//  Copyright (c) 2015 Aman Agrawal Industries Corporation Ltd. Std. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var image: UIImageView!

    @IBAction func buttonPressed(sender: AnyObject) {
        UIView.animateWithDuration(2, animations: {
            var imageFrame = self.image.frame
            imageFrame.origin.y -= 4.3 * imageFrame.size.width
            self.image.frame = imageFrame
            self.image.alpha = 1
            
            }, completion: {
                (value: Bool) in
                var imageFrame = self.image.frame
                imageFrame.origin.y = 467
                self.image.frame = imageFrame
                self.image.alpha = 0
        })
    }
}

