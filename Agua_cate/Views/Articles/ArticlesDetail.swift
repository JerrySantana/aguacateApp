//
//  ArticlesDetail.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//

import SwiftUI

struct ArticlesDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var article: Articles
    var articlesIndex: Int {
        modelData.articles.firstIndex(where: {$0.id == article.id })!
    }
    var body: some View {
        ScrollView {
            RectangleImage(image: article.image)
                .offset(y: -200)
                .padding(.bottom, -210)
            VStack(alignment: .leading) {
                Text(article.title)
                    .font(.title)
                Link(destination: URL(string: article.page)!,
                     label: {
                    Text("Ir a la página de este artículo.")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .cornerRadius(12)
                })
                Divider()
                Text(article.content)
            }
            .padding()
        }
        .navigationTitle(article.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ArticlesDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        ArticlesDetail(article: ModelData().articles[0])
            .environmentObject(modelData)
    }
}
