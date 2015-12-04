//
//  Prefix.swift
//  Xunge2015
//
//  Created by 汤坤 on 15/6/17.
//  Copyright © 2015年 Soup. All rights reserved.
//

import UIKit

class Prefix: NSObject {

    static let SystemVersion = NSString(string: UIDevice.currentDevice().systemVersion).floatValue
    
    // MARK: 个推
    static let kAppId = "VAdVTUkrOgAk1DQE8WfsVA"
    static let kAppKey = "CeuV7IufY379YFzqb6ICd5"
    static let kAppSecret = "izzNJRk2iC8sqLvzUT35Q"
    
    // MARK: 友盟key
    static let UMengKey = "556d702767e58e48910049f0"
    
    // MARK: 融云key
    static let RONGCLOUD_IM_APPKEY = "8luwapkvuf73l"
    
    // MARK: 上传token clientId
    static let REGISTERDEVICE_URL = "/userAction!registerDevice"
    
    // MARK: URL
    
    static let URL_BASE = "http://192.168.9.4:8080/"
    
    static let Service = "xunge"
    
    // MARK: 企业注册
    static let REGISTER_URL = "/companyAction!register"
    
    // MARK: 员工注册
    static let USER_REGISTER_URL = "/userAction!register"
    
    // MARK: 通知员工注册
    static let REQUESTAUDIT_URL = "/userAction!requestAudit"
    
    // MARK: 审批员工
    static let AUDIT_URL = "/userAction!audit"
    
    // MARK: 登录
    static let LOGIN_URL = "cas/v1/ticketsExt"
    
    // MARK: 登录票据
    static let LOGIN_USERINFO = "/userAction!getUserInfo"
    
    // MARK: 请求联系人列表
    static let GETFRIENDLIST_URL = "/userAction!getFriendList"
    
    // MARK: 发生文本消息
    static let SEND_MSG_TXT = "/imAction!sendMessage"
    
    // MARK: 获取群
    static let GET_GROUP = "/imAction!getAllGroup"
    
    // MARK: 七牛
    
    // MARK: 获取上传Token
    static let UPDATETOKEN_URL = "/storageAction!getUploadToken"
    
    static let UPDATEFILE_URL = "/fileAction!upload"
}
