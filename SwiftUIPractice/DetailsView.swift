//
//  DetailsView.swift
//  SwiftUIPractice
//
//  Created by Tatiana Bondarenko on 2/28/23.
//

import SwiftUI

struct DetailsView: View {

    var chosenElement: FavoriteElement

    var body: some View {
        VStack {
            Text(chosenElement.name)
                .padding()
                .font(.title)
            Image(systemName: chosenElement.imageName)
                .padding()
            Text(chosenElement.description)
                .padding()
                .font(.body)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenElement: FavoriteElement(name: "Example", imageName: "person", description: "Test"))
    }
}
