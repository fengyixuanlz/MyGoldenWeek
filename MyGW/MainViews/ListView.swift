//
//  ListView.swift
//  MyGW
//
//  Created by sherryfeng on 6/20/26.
//

import SwiftUI

struct ListView: View {
    @State private var isShowDetail = false

    var body: some View {
        let dataSource = DataSource()

        VStack {
            ForEach(dataSource.memorise) { item in
                HStack {
                    Image(item.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .padding(.vertical, 8)
                        .padding(.leading, 8)
                        .shadow(radius: 1)

                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.headline)
                        
                        Text(item.description.prefix(25) + "...")
                            .font(.subheadline)
                            .frame(height: 50)

                        Location(date: item.date)
                    }
                    .frame(height: 100)
                    .foregroundStyle(.font)
                    .padding(.trailing, 18)
                    .padding(.top, 8)
                    .padding(.leading, 8)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.bgColorWhite)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .shadow(radius: 3)
                .padding(.top, 8)
            }
            .onTapGesture {
                isShowDetail = true
            }

            Spacer()
        }.padding(8)
            .sheet(isPresented: $isShowDetail) {
                ContentView()
            }
    }
}

#Preview {
    ListView()
}
