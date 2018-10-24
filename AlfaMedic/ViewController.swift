//
//  ViewController.swift
//  AlfaMedic
//
//  Created by Luis Manuel Prieto Almeida for CEMEDIC Group on 17/10/18.
//  Copyright © 2018 Diagonal World Corporation OÜ. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet var alfam1: UIView? = nil
    var webView: WKWebView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "http://www.app.alfamedic.es/")
        let myRequest = URLRequest(url: myURL!)
        _ = webView?.load(myRequest)
    }
    
    override func loadView() {
        super.loadView()
        self.webView = WKWebView()
        self.view = self.webView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
