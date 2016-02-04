//
//  ViewController.swift
//  WebViewer
//
//  Created by Baumanis, Rihards on 2/4/16.
//  Copyright © 2016 Baumanis, Rihards. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        urlTextField.delegate = self
        mainWebView.delegate = self

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

    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        return true
    }

    func textFieldDidEndEditing(textField: UITextField) {

        let url = NSURL(string: textField.text!)
        let request = NSURLRequest(URL: url!)
        mainWebView.loadRequest(request)
    }


}

