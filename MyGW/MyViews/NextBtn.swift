//
//  NextBtn.swift
//  MyGW
//
//  Created by sherryfeng on 6/20/26.
//

import SwiftUI

struct NextBtn: View {
    var title: String
    var image: String
    var arrLength: Int
    var currentIndex: Int
    var flag: String

    var body: some View {
        HStack {
            if flag == "left" {
                Text(title)
                Image(systemName: image)
            } else {
                Image(systemName: image)
                Text(title)
            }
        }
        .padding()
        .font(.headline)
        .background(.bgColorBlue)
        .foregroundStyle(.fontColor1)
        .opacity(
            flag == "left"
            ? (currentIndex >= arrLength - 1 ? 0.5 : 1)
            : (currentIndex <= 0 ? 0.5 : 1)
        )
        .cornerRadius(10)
    }
}

#Preview {
    NextBtn(title: "testBtn", image: "arrow.right", arrLength: 4, currentIndex: 1, flag: "left")
}
