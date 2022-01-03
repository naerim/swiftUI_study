//
//  ContentView.swift
//  SwiftUI_text
//
//  Created by 김내림 on 2022/01/03.
//

import SwiftUI

struct ContentView: View {
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        // formatter.dateStyle = .long
        return formatter
    }()
    var today = Date()
    var trueOrFalse : Bool = false
    var number : Int = 123
    
    var body: some View {
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                .tracking(5)
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .lineSpacing(12)
                .truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/)
                .shadow(color: .red, radius: 1.5, x: -10, y: 10)
                
                .padding(.vertical, 20)
                .background(Color.yellow)
                .cornerRadius(20)
                
                .padding()
                .background(Color.green)
                
                .padding()
            Text("안녕하세요 😀")
                .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            Text("오늘의 날짜 : \(today, formatter: ContentView.dateFormat)")
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            Text("숫자 : \(number)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
