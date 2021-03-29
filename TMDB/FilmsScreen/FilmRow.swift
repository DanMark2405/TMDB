//
//  FilmRow.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import SwiftUI

struct FilmRow: View {
    var film: Film
    var body: some View {
        
        HStack()
        {
            Image(uiImage: film.getPosterLink().load())
                .resizable()
                .frame(width:120, height: 180)
            
            HStack{
                VStack(alignment: .leading)
                {
                    
                    Text(film.name!)
                        .bold()
                        .foregroundColor(.red)
                    Spacer()
                    Text(film.description!)
                        .italic()
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                        .padding(5)
                    
                    Spacer()
                    Text(film.getYearReleaseDate())
                        .bold()
                        .padding(3)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    
                    
                }.padding(3)
                Spacer()
                Image(systemName: "chevron.forward")
                    .resizable()
                    .frame(width: 10, height: 20, alignment: .trailing)
                    .foregroundColor(.black)
            }
            
            
            
            
            
        }.frame(height: 200)
        .padding(5)
        
    }
    
}

struct FilmRow_Previews: PreviewProvider {
    static var previews: some View {
        FilmRow(film: films[0])
    }
}
