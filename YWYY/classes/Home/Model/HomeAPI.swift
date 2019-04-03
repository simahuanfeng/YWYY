//
//  HomeApi.swift
//  DYZB
//
//  Created by 张振宇 on 2019/4/3.
//  Copyright © 2019 张振宇. All rights reserved.
//

import Foundation
import Moya

//初始化首页请求的provider
let CategoryGetProvider = MoyaProvider<Category>()

/** 下面定义首页请求的endpoints（供provider使用）**/

//请求分类
public enum Category {
    case channels  //获取首页列表
//    case playlist(String) //
}

//请求配置
extension Category: TargetType {
    //服务器地址
    public var baseURL: URL {
        switch self {
        case .channels:
            return URL(string: "http://120.24.206.75:1010")!

        }
    }
    
    //各个请求的具体路径
    public var path: String {
        switch self {
            //首页
        case .channels:
            return "/Index/CategoryGet"

        }
    }
    
    //请求类型
    public var method: Moya.Method {
        return .get
    }
    
    //请求任务事件（这里附带上参数）
    public var task: Task {
        switch self {
//        case .playlist(let channel):
//            var params: [String: Any] = [:]
//            params["channel"] = channel
//            params["type"] = "n"
//            params["from"] = "mainsite"
//            return .requestParameters(parameters: params,
//                                      encoding: URLEncoding.default)
        default:
            return .requestPlain
        }
    }
    
    //是否执行Alamofire验证
    public var validate: Bool {
        return false
    }
    
    //这个就是做单元测试模拟的数据，只会在单元测试文件中有作用
    public var sampleData: Data {
        return "{}".data(using: String.Encoding.utf8)!
    }
    
    //请求头
    public var headers: [String: String]? {
        return nil
    }
}
