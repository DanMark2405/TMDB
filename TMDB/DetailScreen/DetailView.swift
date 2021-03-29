//
//  DetailView.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var state: DetailState
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 20)
            {
                Image(uiImage: state.film.getPosterLink().load())
                    .resizable()
                    .frame(height:400)
                
                Divider()
                HStack{
                    Text(state.film.name!)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    
                    Spacer()
                    Text(state.film.getYearReleaseDate())
                        .bold()
                        .foregroundColor(.blue)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                }
                Divider()
                Text(state.film.description!)
            }
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(state: DetailState())
    }
}
