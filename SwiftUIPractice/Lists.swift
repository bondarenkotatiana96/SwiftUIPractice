//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Tatiana Bondarenko on 2/28/23.
//

import SwiftUI

struct Lists: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(myFavorites) { favorite in
                    Section {
                        ForEach(favorite.elements) { element in
                            NavigationLink {
                                DetailsView(chosenElement: element)
                            } label: {
                                Text(element.name)
                            }
                        }
                    } header: {
                        Text(favorite.title)
                    }

                }
            }
            .listStyle(.plain)
            .padding()
        }
        .navigationBarTitle("Favorites")
    }
}

struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
