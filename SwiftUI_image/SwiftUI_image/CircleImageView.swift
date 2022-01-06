//
//  CircleImageView.swift
//  SwiftUI_image
//
//  Created by 김내림 on 2022/01/05.
//

import SwiftUI

struct CircleImageView : View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(.yellow)
//            .shadow(color: .gray, radius: 2, x: 2, y: 10)
        Image("sq-lim-k4vhuUHv08o-unsplash")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(color: .gray, radius: 10, x: 5, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.3)
            )
            .overlay(
                Circle()
                    .stroke(Color.green, lineWidth: 10)
                    .padding()
            )
            .overlay(
                Text("멍뭉")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
            )
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 200, height: 100)
//            .clipped()
            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleImageView()
                .previewDevice("iPhone 12 mini")
        }
    }
}
