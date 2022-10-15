//
//  APIConfig.swift
//  paytv-desafio-mobile
//
//  Created by Junior Fernandes on 15/10/22.
//

import Foundation
import Alamofire

enum BasePath {
    static let theMovieDBAPI = "http://api.themoviedb.org/3"
    static let getImagesTheMovieDBAPI = UIDevice.current.userInterfaceIdiom == .phone ?  "https://image.tmdb.org/t/p/w500/" : "https://image.tmdb.org/t/p/w780/"
    static let theMovieDBWebSite = "https://www.themoviedb.org"
}

enum EndPoint {
    case getPopularMovies
    case getTopRatedMovies
    case getGenresMoviesList
    case getMovieDetails(contentID: Int)
    case getMovieVideos(contentID: Int)
    case watchNowLink(contentID: Int)
}

extension EndPoint {
    private var baseURL: String { return BasePath.theMovieDBAPI }
    private var key: String { return "5638b412d6b3434f17d48ebd63eed875"}
    private var connective: String { return "?api_key="}
    
    private var endPoint: String {
        switch self {
        case .getPopularMovies:
            return "/movie/popular"
        case .getTopRatedMovies:
            return "/movie/top_rated"
        case .getGenresMoviesList:
            return "/genre/movie/list"
        case .getMovieDetails(let contentID):
            return "/movie/\(contentID)"
        case .getMovieVideos(let contentID):
            return "/movie/\(contentID)/videos"
        case .watchNowLink(let contentID):
            return "/movie/\(contentID)"
        }
    }
    
    var fullPath: String {
        switch self {
        case .watchNowLink:
            let baseURL = BasePath.theMovieDBWebSite
            let connective = "/watch?locale="
            return baseURL + endPoint + connective
        default:
            return baseURL + endPoint + connective + key
        }
    }
}
