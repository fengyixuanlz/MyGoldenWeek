//
//  DataSource.swift
//  MyGW
//
//  Created by sherryfeng on 6/20/26.
//

import Foundation

struct Memory: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let date: String
}

struct DataSource {
    
    let memorise: [Memory] = [
        Memory(imageName: "IMG_1436", title: "お寺", description: "ある日天気が良かった、近所にあるお寺に行きました。休暇とあって、観光客が多いでした。", date: "5月1日"),
        Memory(imageName: "IMG_1435", title: "可愛い鉄道", description: "東京の駅で電車を待っていました。ホームには多くの人が行き交い、日本の鉄道の正確さに改めて驚かされました。", date: "5月3日"),
        Memory(imageName: "IMG_1434", title: "ベトナム料理", description: "日本語学校の友達と一緒にベトナム料理を食べました。いろいろな話をしながら、美味しい料理を食べました。まだ日本語上手ではありませんが、言いたいことを精一杯話しました。", date: "5月2日"),
        Memory(imageName: "IMAGE_05", title: "新宿", description: "新宿を訪れました。人通りが多く、とても活気のある街でした。ショッピングやグルメを楽しみながら、東京のエネルギーを感じることができました。", date: "5月1日")
    ]
}
