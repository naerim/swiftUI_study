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
                Image("sq-lim-k4vhuUHv08o-unsplash")
                    .frame(height: 10)
                    .offset(y: -850)
                
                CircleImageView()
                
                HStack {
                    NavigationLink(
                        destination: MyWebView(urlToLoad: "https://www.naver.com")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        ){
                        Text("네이버")
                            .font(.system(size: 20))
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .cornerRadius(20)
                    }
                    NavigationLink(
                        destination: MyWebView(urlToLoad: "https://www.daum.net")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        ){
                        Text("DAUM")
                            .font(.system(size: 20))
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(20)
                    }
                }
                .padding(50)
                .padding(.bottom, 100)
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
