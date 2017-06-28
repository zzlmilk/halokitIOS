//
//  BGNetworkType.swift
//  HaloKitProduct
//
//  Created by 范博 on 2017/6/28.
//  Copyright © 2017年 范博. All rights reserved.
//

import UIKit


struct BGEnviroment {
    let requestUrl     : String
    let imageUrl       : String
    let uploadImageUrl : String
    // 当前环境
    static var Current: BGEnviroment{
        return .deBug
    }
    
    // 测试环境
    static let deBug: BGEnviroment = {
        return BGEnviroment(requestUrl: "https://",
                             imageUrl: "http://",
                             uploadImageUrl: "http://")
    } ()
    
    // 生产环境
    static let Beta: BGEnviroment = {
        return BGEnviroment(requestUrl: "https://",
                             imageUrl: "https://",
                             uploadImageUrl: "https://")
    } ()
    
}

//方法域
struct BGRequestFunction {
//    static let login =
}

protocol BGRequestFunctionType {
    
    var base: String { get }
    
    var domain: String { get }
    var function: String { get }
    
    var urlString: String { get }
    
}

extension BGRequestFunctionType {
    
    var base: String {
        return BGEnviroment.Current.requestUrl
    }
    
    var urlString: String {
        return "\(self.base)/\(self.domain)/\(self.function)"
    }
    
}

struct BGRequestDomainLogType: BGRequestFunctionType {
    
    private(set) var domain = "Logs"
    private(set) var function: String
    
    
    @available(*, unavailable, message: "还没出")
    static let LogsList: BGRequestDomainLogType = {
        return BGRequestDomainLogType(function: " LogsList ")
    } ()
    
    
    init(function: String) {
        self.function = function
    }
    
}
