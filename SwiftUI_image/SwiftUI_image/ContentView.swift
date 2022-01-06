//
//  ContentView.swift
//  SwiftUI_image
//
//  Created by 김내림 on 2022/01/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleImageView()
                
                HStack {
                    NavigationLink(
                        destination: MyWebView(urlToLoad: "https://www.naver.com")
                        ){
                        Text("네이버")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 mini")
    }
}
