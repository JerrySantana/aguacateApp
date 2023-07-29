//
//  JournalView.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//
import SwiftUI

struct JournalView: View {
    var body: some View {
        ZStack {
            Image("Logo")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.keyboard, edges: .top)
            ScrollView {
                VStack {
                    JournalFormView()
                }
            }
        }
    }
}

struct DiaryView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}


