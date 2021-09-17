//
//  Json.swift
//  PhotoSearch
//
//  Created by nil on 17.09.2021.
//

import Foundation
import Alamofire

struct ResponsePhoto: Codable {
    let total: Int
    let total_pages: Int
    let results: [ResultPhoto]
}

struct ResultPhoto: Codable {
    let id: String
    let width: Int
    let height: Int
    let urls: UrlPhoto
}
struct UrlPhoto: Codable {
    let raw: String
    let full: String
    let small: String
}


