//
//  WebView.swift
//  H4X0R
//
//  Created by admin on 15.09.2022.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
 
   
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "https://www.google.com")
    }
}
