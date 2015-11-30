//
//  ViewController.swift
//  admobBanner
//
//  Created by mstcode on 30/11/15.
//  Copyright © 2015 mstcode. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    var banner : GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadBanner()
    }
    
    func loadBanner(){
        banner = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)
        banner.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        banner.rootViewController = self
        let req : GADRequest = GADRequest()
        banner.loadRequest(req)
        banner.frame = CGRectMake(0, view.bounds.height - banner.frame.size.height, banner.frame.size.width, banner.frame.size.height)
        self.view.addSubview(banner)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

