//
//  FilmsView.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import SwiftUI
import Combine
struct FilmsView: View {
    @ObservedObject var state: FilmsState
    
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach( state.ListFilms )
                { film in
                    
                    FilmRow(film: film)
                        .onTapGesture {
                            self.state.controller?.goToDetail(film: film)
                        }
                    Divider()
                    
                }
                
            }
            
        }
    }
}


struct FilmsView_Previews: PreviewProvider {
    static var previews: some View {
        FilmsView(state: FilmsState())
    }
}
