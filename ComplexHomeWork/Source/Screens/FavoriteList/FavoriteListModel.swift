//
//  FavoriteListModel.swift
//  ComplexHomeWork
//

//

import Foundation

enum FavoriteList: Int {
    case books
    case movies
    case songs
}

protocol FavoriteListModelProtocol: AnyObject {
    func dataDidLoad()
    func sourceDidChange()
}

class FavoriteListModel {
    
    /// Public Properties
    weak var delegate: FavoriteListModelProtocol!
    var items: [String] = []
    
    /// Private Properties
    private var selectedIndex: FavoriteList = .books
    
    private var books: [Book] = []
    private var movies: [Movie] = []
    private var songs: [Song] = []
    
    /// Public Functions
    func laodData() {
        
        let fileService = FileService()
        
        if let booksResult = fileService.loadBooksJson(filename: "Books") {
            books = booksResult.books
        }
        if let moviesResult: MovieList = fileService.loadMoviesJson(filename: "Movies") {
            movies = moviesResult.movies
        }
        if let songsResult = fileService.loadSongsJson(filename: "Songs") {
            songs = songsResult.songs
        }
        updateItems()
        delegate.dataDidLoad()
    }
    
    func didChangeIndex(to index: Int) {
        selectedIndex = FavoriteList(rawValue: index) ?? .books
        updateItems()
        delegate.sourceDidChange()
    }
}

// MARK: - Private
private extension FavoriteListModel {
    
    func updateItems() {
        switch selectedIndex {
        case .books:
            items = books.compactMap{
                String("Назва: \($0.bookTitle)\nАвтор: \($0.author)\nРік: \($0.year)\n")
            }
        case .movies:
            items = movies.compactMap{
                String("Назва: \($0.name)\nЖанр: \($0.genre)\nРежисер: \($0.director)\nРік: \($0.year)\n")
            }
        case .songs:
            items = songs.compactMap{
                String("Назва: \($0.songName)\nАльбом: \($0.album)\nВиконавець: \($0.author)\nРік: \($0.year)\n")
            }
        }
    }
}
