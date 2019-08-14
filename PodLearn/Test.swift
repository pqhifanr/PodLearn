//
//  Test.swift
//  PodLearn
//
//  Created by pengquanhua on 2019/8/14.
//  Copyright © 2019 ifanr. All rights reserved.
//

import Foundation
import PaySDK

@objc public class Test: NSObject {
    @objc func sayHello() {
        print("hello test")

        AlipaySDK.defaultService()
    }
}
