//
//  SecondViewController.swift
//  tabs-tabs-tabs
//
//  Created by Aditya Vikram Godawat on 25/08/18.
//  Copyright © 2018 Aditya Vikram Godawat. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        loadUrl()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    //MARK: - Custom Actions
    
    func loadUrl() {
        if let url = URL(string: googleUrl) {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        }
    }
}

//MARK: - Web View delegate

extension SecondViewController: UIWebViewDelegate {
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activityIndicator.stopAnimating()
        activityIndicator.isHidden = true
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        activityIndicator.stopAnimating()
        activityIndicator.isHidden = true

    }
}
