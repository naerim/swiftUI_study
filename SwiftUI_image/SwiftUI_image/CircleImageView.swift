//
//  CircleImageView.swift
//  SwiftUI_image
//
//  Created by 김내림 on 2022/01/05.
//

import SwiftUI

struct CircleImageView : View {
    var body: some View {
        Image(systemName: "bolt.circle")
            .font(.system(size: 200))
            .foregroundColor(.yellow)
            .shadow(color: .gray, radius: 2, x: 2, y: 10)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
