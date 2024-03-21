//
//  Model.swift
//  JobSearch
//
//  Created by Александр Меренков on 13.03.2024.
//

import SwiftUI

// MARK: - Color

struct CustomColor {
    static let gray1 = Color("Gray1")
    static let gray2 = Color("Gray2")
    static let gray3 = Color("Gray3")
    static let gray4 = Color("Gray4")
    static let green = Color("SpecialGreen")
    static let darkGreen = Color("SpecialDarkGreen")
    static let blue = Color("SpecialBlue")
}

// MARK: - Network

struct PostModel: Codable {
    let vacancies: [Vacancies]
}

struct Vacancies: Codable, Hashable {
    let id: String
    let lookingNumber: Int?
    let title: String
    let address: Adress
    let company: String
    let experience: Experience
    let publishedDate: String
    let isFavorite: Bool
}

struct Adress: Codable, Hashable {
    let town: String
    let street: String
    let house: String
}

struct Experience: Codable, Hashable {
    let previewText: String
}
