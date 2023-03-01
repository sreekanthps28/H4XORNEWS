//
//  WebView.swift
//  H4XORNEWS
//
//  Created by SREEKANTH PS on 01/03/2023.
//

import Foundation
import SwiftUI
import WebKit

struct WebView:UIViewRepresentable{
    let urlString:String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let urlRequest = URLRequest(url: url)
                uiView.load(urlRequest)
            }
        }
    }
    
}
