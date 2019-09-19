//
//  newModel.swift
//  SFProject
//
//  Created by wemac on 2019/9/19.
//  Copyright © 2019 wemac. All rights reserved.
//

import UIKit
import SwiftyJSON

class newModel: NSObject {
    //这是一条新闻模型

    /// 时间
    
    var date:String = ""
    
    /// 图
    var thumbnail_pic_s:String = ""
    var thumbnail_pic_s02:String = ""
    var thumbnail_pic_s03:String = ""
    
    /// 分类
    
    var category:String = ""
    // 作者
    var author_name:String = ""
    //链接
    var url:String = ""
    //标题
    var title:String = ""
    //uniquekey
    var uniquekey:String = ""
   
    init(jsonData: JSON) {
        date               = jsonData["date"].stringValue
        thumbnail_pic_s    = jsonData["thumbnail_pic_s"].stringValue
        thumbnail_pic_s02  = jsonData["thumbnail_pic_s02"].stringValue
        thumbnail_pic_s03  = jsonData["thumbnail_pic_s03"].stringValue
        category           = jsonData["category"].stringValue
        author_name        = jsonData["author_name"].stringValue
        url                = jsonData["url"].stringValue
        title              = jsonData["title"].stringValue
        uniquekey          = jsonData["uniquekey"].stringValue

    }
   static func modelArrayWithJsonArray(jsonArray:[JSON]) -> [newModel] {
        
        var modelArray = [newModel]()
        for json in jsonArray {
            modelArray.append(newModel(jsonData: json))
        }
        
        return modelArray
    }

}
