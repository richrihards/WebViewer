//
//  ViewController.swift
//  WebViewer
//
//  Created by Baumanis, Rihards on 2/4/16.
//  Copyright © 2016 Baumanis, Rihards. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var mainWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Nomaini URL pec vajadzibas.

        let urlString = "http://www.google.lv"
        let url = NSURL(string: urlString)
        let request = NSURLRequest(URL: url!)

        mainWebView.delegate = self
        mainWebView.loadRequest(request)
    }

    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print("Failed loading \(error?.localizedDescription)")
    }

    func webViewDidFinishLoad(webView: UIWebView) {
        print("Finished loading page \(webView.request?.URL?.absoluteString)")

    }

    func webViewDidStartLoad(webView: UIWebView) {
        print("Started loading page \(webView.request?.URL?.absoluteString)")

    }
}

