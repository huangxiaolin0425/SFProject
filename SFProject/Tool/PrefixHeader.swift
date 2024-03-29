//
//  PrefixHeader.swift
//  SFProject
//
//  Created by wemac on 2019/9/18.
//  Copyright © 2019 wemac. All rights reserved.
//

import UIKit
import Alamofire
import SnapKit

//屏高

let kScreenHeight = UIScreen.main.bounds.size.height

//屏宽

let kScreenWidth = UIScreen.main.bounds.size.width

//iPhonex以上判断

let IS_IPhoneX_All = (kScreenHeight == 812 || kScreenHeight == 896)

//导航栏高

let HYDevice_NaviBar_Height = (IS_IPhoneX_All ? 88 : 64)

//状态栏高

let HYDevice_StatusBar_Height = (IS_IPhoneX_All ? 44 : 20)

//选项卡高

let HYDevice_TabBar_Height = (IS_IPhoneX_All ? 83 : 49)

//安全区高

let HYDevice_SafeArea_BottomHeight = (IS_IPhoneX_All ? 34 : 0)

/**宽度比例*/

func XL_ScaleWidth(_ font:CGFloat) -> (CGFloat) {
    
    return (kScreenWidth/375)*font
    
}

/**高度比例*/

func XL_ScaleHeight(_ font:CGFloat) -> (CGFloat) {
    
    return kScreenHeight/667*font
    
}

/**字体比例*/

func XL_ScaleFont(_ font:CGFloat) -> (CGFloat) {
    
    return kScreenWidth/375*font
    
}

let JHAppkey = "3e2987655cbb1c13326bced9ae159cb0"
