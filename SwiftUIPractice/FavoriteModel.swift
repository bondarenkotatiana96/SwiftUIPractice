//
//  FavoriteModel.swift
//  SwiftUIPractice
//
//  Created by Tatiana Bondarenko on 2/28/23.
//

import Foundation

struct FavoriteModel: Identifiable {
    var id = UUID()
    var title: String
    var elements: [FavoriteElement]
}

struct FavoriteElement: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var description: String
}

let metallica = FavoriteElement(name: "Metallica", imageName: "person", description: "No 1 music band")
let bts = FavoriteElement(name: "BTS", imageName: "person", description: "No 2 music band")
let blackpink = FavoriteElement(name: "Black Pink", imageName: "person", description: "No 3 music band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica, bts, blackpink])

let pulpFiction = FavoriteElement(name: "Pulp Fiction", imageName: "person", description: "No 1 movie")
let legallyBlonde = FavoriteElement(name: "Legally Blond", imageName: "person", description: "No 2 movie")
let eatPrayLove = FavoriteElement(name: "Eat, pray, love", imageName: "person", description: "No 3 movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpFiction, legallyBlonde, eatPrayLove])

let myFavorites = [favoriteBands, favoriteMovies]
