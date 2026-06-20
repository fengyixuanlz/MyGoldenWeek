//
//  location.swift
//  MyGW
//
//  Created by sherryfeng on 6/20/26.
//

import SwiftUI

struct Location: View {
    var date: String
    var body: some View {
        HStack {
            Label("Tokyo", systemImage: "mappin.and.ellipse.circle")
            Text(" - ")
            Label(date, systemImage: "clock")
        }
        .font(.caption)
        .foregroundStyle(.lightFont)
    }
}

#Preview {
    Location(date: "5")
}
