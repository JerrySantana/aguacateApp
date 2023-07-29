//
//  ArticlesRow.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//

import SwiftUI

struct ArticlesRow: View {
    var article: Articles
    
    var body: some View {
        HStack {
            article.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(article.title)
        }
    }
}

struct ArticlesRow_Previews: PreviewProvider {
    static var articles = ModelData().articles
    
    static var previews: some View {
        Group {
            ArticlesRow(article: articles[0])
            ArticlesRow(article: articles[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
