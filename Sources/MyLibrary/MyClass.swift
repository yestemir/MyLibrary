//
//  File.swift
//  
//
//  Created by Dina Yestemir on 11.06.2021.
//

import Foundation
import UIKit
import WebKit

public class File: WKWebView {
    
    public init() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.javaScriptEnabled = true
        super.init(frame: .zero, configuration: webConfiguration)
        self.scrollView.isScrollEnabled = false
        self.isMultipleTouchEnabled = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @discardableResult
    public func load() -> WKNavigation? {
        if let url = URL(string:"http://example.com") {
            let req = URLRequest(url: url)
            return super.load(req)
        }
        return nil
    }
}
