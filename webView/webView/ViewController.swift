//
//  ViewController.swift
//  webView
//
//  Created by 新井岩生 on 2018/04/25.
//  Copyright © 2018年 新井岩生. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.google.com")
        let urlRequest = URLRequest(url: url!)
        webView.load(urlRequest)
        
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        // ネットワークインジケータを表示
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        // ネットワークインジケータを非表示
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print(error!)
    }
    
    
    @IBAction func prevBtn(_ sender: Any) {
        webView.goBack() // 戻る
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward() // 進む
        }
    }
    
    @IBAction func refreshBtn(_ sender: Any) {
        webView.reload() //リロード
    }
    
}

