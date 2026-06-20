//
//  SwiftUIView.swift
//  MyGW
//
//  Created by sherryfeng on 6/20/26.
//

import SwiftUI

enum PageType: Int {
    case List = 1
    case Map = 2
}

struct HomeView: View {
    @State private var selectedPage: Int = PageType.List.rawValue

    var body: some View {
        NavigationStack{
            VStack {
                Picker("モード", selection: $selectedPage) {
                    Text("一覧表示").tag(PageType.List.rawValue)
                    Text("写真表示").tag(PageType.Map.rawValue)
                }
                .pickerStyle(.segmented)
                .padding(.horizontal, 30)
                .padding(.bottom, 10)
                .foregroundColor(.font)

                if selectedPage == PageType.List.rawValue {
                    VStack {
                        ListView()
                    }
                    .background(
                        UnevenRoundedRectangle(
                            cornerRadii: .init(
                                topLeading: 24,
                                bottomLeading: 0,
                                bottomTrailing: 0,
                                topTrailing: 24
                            )
                        )
                        .fill(Color.bgColorWhite)
                    )
                    .ignoresSafeArea(edges: .bottom)
                } else {
                    ContentView()
                }
            }
            .background(Color.bgColorOrenge)
            .navigationTitle("私のゴールデンウィーク")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HomeView()
}
