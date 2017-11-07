//
//  AboutViewController.swift
//  BullsEye
//
//  Created by KELVIN LING SHENG SIANG on 06/11/2017.
//  Copyright © 2017 KELVIN LING SHENG SIANG. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
//            if let htmlData = try? Data(contentsOf: url) {
//                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
//                webView.load(htmlData, mimeType: "text/html", characterEncodingName: "UTF-8", baseURL: baseURL)
//            }
//        }
        
//        webView.load(URLRequest(url: URL(fileURLWithPath: Bundle.main.path(forResource: "BullsEye", ofType: "html")!) ))
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            if let contents = try? String(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.loadHTMLString(contents, baseURL: baseURL)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
