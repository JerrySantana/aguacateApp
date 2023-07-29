//
//  Articles.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//

import Foundation
import SwiftUI

struct Articles: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var content: String
    var page: String
    private var imageName: String
    
    var image: Image{
        Image(imageName)
    }
}
