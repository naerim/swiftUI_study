//
//  ContentView.swift
//  swiftUI_tutorial_1
//
//  Created by 김내림 on 2022/01/02.
//

import SwiftUI

struct ContentView: View {
        
    // @State : 값의 변화를 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    // 몸체
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                } //HStack
                // top bottom leading(왼) trailing(오른쪽)
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                // 탭 제스쳐 추가
                .onTapGesture {
                    print("HStack 이 클릭되었다.")
                    
                    // 애니메이션
                    withAnimation {
                        // toggle() true 이면 false로
                        self.isActivated.toggle()
                    }
                }
                // 네이게이션 버튼(링크)
                NavigationLink(
                destination: MyTextView(isActivated: $isActivated)){
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }.padding(.top, 50)
            }
        } // Navigation
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
