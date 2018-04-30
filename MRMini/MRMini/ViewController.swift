//
//  ViewController.swift
//  MRMini
//
//  Created by Mehdi Al-alak on 30/04/2018.
//  Copyright © 2018 Mehdi Al-alak. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.rigshospitalet.dk/afdelinger-og-klinikker/diagnostisk/radiologisk-klinik/undersoegelse-og-behandling/Sider/mr-skanning.aspx")
        let request = URLRequest(url: url!)
        
        webview.load(request)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

