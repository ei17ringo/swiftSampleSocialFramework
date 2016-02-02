//
//  ViewController.swift
//  sampleSocialFramework
//
//  Created by Eriko Ichinohe on 2016/02/02.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapBtn(sender: UIButton) {
        var twitterVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        twitterVC.setInitialText("つぶやくよ")
        //message表示
        presentViewController(twitterVC, animated: true, completion: nil)
        
    }

    @IBAction func tapFBBtn(sender: UIButton) {
        
        var facebookVC = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        facebookVC.setInitialText("投稿するよ！")
        
        presentViewController(facebookVC, animated: true, completion: nil)
    }
}

