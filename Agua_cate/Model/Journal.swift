//
//  Journal.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//
import Foundation

struct Journal: Codable, Hashable {
    var bathTime: Double
    var dishesTime: Double
    var othersTime: Double
    var cleaningTime: Double
    var bathroom: Double
    var clothes: Double
    var date = Date()
}
