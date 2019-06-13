//
//  Tracks.swift
//  phraseapp-demo
//
//  Created by Mohammad Ashour on 2019-05-25.
//  Copyright © 2019 Mohammad Ashour. All rights reserved.
//

import Foundation

struct Track {
    var artistName: String
    var trackName: String
    var releaseDate: String
    
    init(artistName: String, trackName: String, releaseDate: String) {
        self.artistName = artistName
        self.trackName = trackName
        self.releaseDate = releaseDate
    }
}

let en_tracks = [
  Track(artistName: "Extrawelt", trackName: "Compos Mentis", releaseDate: "2019"),
  Track(artistName: "Pola", trackName: "Hopes for Jokes", releaseDate: "2019"),
  Track(artistName: "Leventina", trackName: "Gravity - Original Mix", releaseDate: "2019"),
  Track(artistName: "Kaytranada", trackName: "Dysfunctional", releaseDate: "2019"),
  Track(artistName: "The Midnight", trackName: "Arcade Dreams", releaseDate: "2018"),
  Track(artistName: "Mad Zach, yunis", trackName: "Moro Cut", releaseDate: "2018"),
]

let ar_tracks = [
    Track(artistName: "إكستراولت", trackName: "كومبوس مينتس", releaseDate: "٢.١٩"),
    Track(artistName: "بولا", trackName: "الأمل للنكات", releaseDate: "٢.١٩"),
    Track(artistName: "ليفنتينا", trackName: "الجاذبية - المزيج الأصلي", releaseDate: "٢.١٩"),
    Track(artistName: "كايترانادا", trackName: "مختلة", releaseDate: "٢.١٩"),
    Track(artistName: "منتصف الليل", trackName: "أحلام أركايد", releaseDate: "٢.١٨"),
    Track(artistName: "ماد زاك، يونس", trackName: "مورو كت", releaseDate: "٢.١٨"),
]

let tracks: [Track] = {
    switch(Locale.current.languageCode) {
    case "ar": return ar_tracks
    default: return en_tracks
    }
}()
