//
//  RectangleImage.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//
import SwiftUI

struct RectangleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.clear, lineWidth: 4)
            }
            .shadow(color: .black, radius: 7)
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: Image("agua1"))
    }
}

