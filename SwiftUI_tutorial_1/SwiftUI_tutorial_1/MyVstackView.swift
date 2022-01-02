//
//  MyVstackView.swift
//  swiftUI_tutorial_1
//
//  Created by 김내림 on 2022/01/02.
//

import SwiftUI

struct MyVStackView: View {
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 60))
        } //Vstack
        .background(Color.red)
    }
}

// 보여주는 용도
struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
