//
//  ViewController.swift
//  theNewAd
//
//  Created by lifubing on 15/4/27.
//  Copyright (c) 2015年 lifubing. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    
    @IBOutlet weak var bannerView: GADBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        bannerView.adUnitID = "ca-app-pub-2582329579982359/6966632223"
        bannerView.rootViewController = self
        self.view.addSubview(bannerView)
        var request:GADRequest = GADRequest()
        request.testDevices = [""]
        bannerView.loadRequest(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn(sender: AnyObject) {
        let url:NSURL = NSURL(string:"http://weibo.com/u/2009667563")!
        UIApplication.sharedApplication().openURL(url)
    }

}

