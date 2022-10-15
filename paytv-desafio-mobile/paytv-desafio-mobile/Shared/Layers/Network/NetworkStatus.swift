//
//  NetworkStatus.swift
//  paytv-desafio-mobile
//
//  Created by Junior Fernandes on 15/10/22.
//

import Alamofire
import Foundation

class NetworkStatus {
    static let shared = NetworkStatus()
    
    var networkManager: NetworkReachabilityManager?
    
    init() {
        self.networkManager = NetworkReachabilityManager()
    }
    
    func isInternetAvailable() -> Bool {
        guard let manager = self.networkManager else { return false }
        return manager.isReachable
    }
}
