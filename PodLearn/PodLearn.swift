//
//  PodLearn.swift
//  PodLearn
//
//  Created by pengquanhua on 2019/8/14.
//  Copyright © 2019 ifanr. All rights reserved.
//

import Foundation

@objc class PodLearn: NSObject {
    @objc func sayHello() {
        print("hello pod")

        WechatAuthSDK.init()
    }
}
