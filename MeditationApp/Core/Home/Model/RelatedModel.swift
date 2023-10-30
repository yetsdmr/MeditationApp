//
//  RelatedModel.swift
//  MeditationApp
//
//  Created by Yunus Emre Taşdemir on 30.10.2023.
//

import Foundation

struct RelatedModel: Identifiable {
    var id:UUID = .init()
    var image: String
    var name: String
    var time: String
    var category: String
}

// Sample Model List // Demo Related List
var demoRelated: [RelatedModel] = [
    RelatedModel(image: "moon", name: "Moon Clouds", time: "45min", category: "Sleep Music"),
    RelatedModel(image: "sweet_sleep", name: "Sweet Sleep", time: "45min", category: "Sleep Music"),
]
