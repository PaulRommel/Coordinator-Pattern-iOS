//
//  ChildFriendlyWebDelegate.swift
//  Master Daitele
//
//  Created by Pavel Popov on 09.02.2025.
//  Copyright © 2025 Pavel Popov. All rights reserved.
//

import UIKit
import WebKit

class ChildFriendlyWebDelegate: NSObject, WKNavigationDelegate {
    var childFriendlySites = ["apple.com", "google.com"]
    
//    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
//        if let host = navigationAction.request.url?.host {
//            if childFriendlySites.contains(where: host.contains) {
//                decisionHandler(.allow)
//                return
//            }
//        }
//
//        decisionHandler(.cancel)
//    }
    func isAllowed(url: URL?) -> Bool {
        guard let host = url?.host else { return false }

        if childFriendlySites.contains(where: host.contains) {
            return true
        }

        return false
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if isAllowed(url: navigationAction.request.url) {
            decisionHandler(.allow)
        } else {
            decisionHandler(.cancel)
        }
    }

}
