//
//  SearchView.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import SwiftUI
struct SearchView: View {
    @ObservedObject var state:SearchState
    var body: some View {
        
        VStack{
            SearchBar(state:state)
            ScrollView{
                LazyVStack{
                    ForEach(state.ListFilms.filter({ self.state.textForSearch.isEmpty ? true : $0.name!.lowercased().contains(self.state.textForSearch.lowercased()) }))
                    {
                        film in
                        HStack{
                            Text(film.name!)
                            Spacer()
                            Text(film.getYearReleaseDate())
                                .foregroundColor(.gray)
                            Image(systemName:"chevron.right.circle")
                                .foregroundColor(.gray)
                            
                        }
                        .padding(3)
                        .onTapGesture {
                            state.controller?.goToDetail(film:film)
                        }
                        Divider()
                        
                    }
                }
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(state: SearchState())
    }
}
