//
//  ContentView.swift
//  swiftUI_tutorial_1
//
//  Created by 김내림 on 2022/01/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            MyVStackView()
            MyVStackView()
            MyVStackView()
        } //HStack
        // top bottom leading(왼) trailing(오른쪽)
        .padding(.all, 30)
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
