//
//  WebLinkController.swift
//  MemeMaker
//
//  Created by cheng chao on 2019/12/30.
//  Copyright © 2019 BAIDU. All rights reserved.
//

import UIKit
import WebKit

class WebLinkController: UIViewController, WKUIDelegate{
    
    let TAG = "WebLinkController"
    
    var webView: WKWebView!

    override func loadView() {
//        super.loadView()
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        
//        view.addSubview(webView)
        view = webView
        // 添加约束
        let top = webView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8)
        let margins = view.layoutMarginsGuide
        let leading = webView.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let traiiling = webView.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        top.isActive  = true
        leading.isActive = true
        traiiling.isActive = true
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://www.baidu.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
