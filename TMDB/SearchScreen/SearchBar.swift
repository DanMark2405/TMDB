//
//  SearchBar.swift
//  TMDB
//
//  Created by student on 29.03.21.
//

import SwiftUI

struct SearchBar: View {
    @ObservedObject var state:SearchState
    var body: some View {
        HStack{
            HStack {
                Image(systemName: "magnifyingglass").foregroundColor(.gray)
                TextField("Search...", text: $state.textForSearch)
                    .onTapGesture {
                        self.state.isEditing = true
                    }
                if self.state.isEditing {
                    Button(action: {
                        self.state.textForSearch = ""
                    }) {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(5)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
            .background(Color(.systemGray6))
           
            
            
            if self.state.isEditing {
                Button(action: {
                    self.state.isEditing = false
                    self.state.textForSearch = ""
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    
                    
                }) {
                    Text("Cancel")
                    
                }
                
            }
            
        }.padding()
      
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(state: SearchState())
    }
}
