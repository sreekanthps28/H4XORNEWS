//
//  DetailView.swift
//  H4XORNEWS
//
//  Created by SREEKANTH PS on 01/03/2023.
//

import SwiftUI

struct DetailView: View {
    let url:String
    var body: some View {
       WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "http://www.google.com")
    }
}

