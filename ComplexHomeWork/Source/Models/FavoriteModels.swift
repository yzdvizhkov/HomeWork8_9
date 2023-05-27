//
//  FavoriteModels.swift
//  ComplexHomeWork
//

//

import Foundation

/// Books
struct BookList: Codable {
    let books: [Book]
}

struct Book: Codable {
    let bookTitle: String
    let author: String
    let year: Int
}

/// Movies
struct MovieList: Codable {
    let movies: [Movie]
}

struct Movie: Codable {
    let name: String
    let director: String
    let genre: String
    let year: Int
}

/// Songs
struct SongList: Codable {
    let songs: [Song]
}

struct Song: Codable {
    let songName: String
    let author: String
    let album: String
    let year: Int
}
