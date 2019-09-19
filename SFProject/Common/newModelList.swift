
//
//  newModelList.swift
//  SFProject
//
//  Created by wemac on 2019/9/19.
//  Copyright © 2019 wemac. All rights reserved.
//

import UIKit
import SwiftyJSON
class newModelList: NSObject {
    
    var market_list:[newModel]
    
    init(_ json: JSON) {
        
//        1、原始的手动解析
//       market_list = newModel.modelArrayWithJsonArray(jsonArray:json["data"].arrayValue)
//        2、简化
//        market_list = json["data"].arrayValue.map({ (json) ->newModel in
//            
//            return newModel(jsonData: json)
//        })
//        3、最简化，推荐使用
        market_list = json["data"].arrayValue.map { newModel(jsonData: $0) }
        
    }
}
