//
//  PodLearn.swift
//  PodLearn
//
//  Created by pengquanhua on 2019/8/14.
//  Copyright © 2019 ifanr. All rights reserved.
//

import Foundation

@objc public class PodLearn: NSObject {
    @objc public func sayHello() {
        print("hello pod")

        WechatAuthSDK.init()
    }
}
