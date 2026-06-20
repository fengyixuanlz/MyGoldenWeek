//
//  ContentView.swift
//  MyGW
//
//  Created by sherryfeng on 5/14/26.
//

import SwiftUI

struct ContentView: View {
    @State private var currentIndex = 0
    let dataSource = DataSource()

    var body: some View {
        VStack {
            GeometryReader { geometry in
                HStack {
                    Spacer()
                    Image(dataSource.memorise[currentIndex].imageName)
                        .resizable()
                        .scaledToFill()
                        .scaleEffect(1.01)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height)
                        .clipped()
                        .cornerRadius(16)
                    Spacer()
                }
            }
            .padding(.top)

            Text(dataSource.memorise[currentIndex].description)
                .font(.headline)
                .padding()

            Spacer()
            Location(date: dataSource.memorise[currentIndex].date)

            HStack {
                Button {
                    currentIndex -= 1
                } label: {
                    NextBtn(title: "前の思い出へ", image: "arrow.left", arrLength: dataSource.memorise.count, currentIndex: currentIndex, flag: "right")
                }
                .disabled(currentIndex <= 0)

                Button {
                    currentIndex += 1
                } label: {
                    NextBtn(title: "次の思い出へ", image: "arrow.right", arrLength: dataSource.memorise.count, currentIndex: currentIndex, flag: "left")
                }
                .disabled(currentIndex >= dataSource.memorise.count - 1)
            }
            .padding(.top)
        }
        .background(Color.bgColorOrenge)
        .foregroundStyle(.font)
    }
}

#Preview {
    ContentView()
}
