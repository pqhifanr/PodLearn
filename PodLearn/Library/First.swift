//
//  First.swift
//  PodLearn
//
//  Created by pengquanhua on 2019/8/12.
//  Copyright © 2019 ifanr. All rights reserved.
//

import Foundation
import PayLibrary

@objc public class Test: NSObject {
    @objc public func sayHello() {
        print("helloworld")
        AlipaySDK.defaultService()
        let test = OCTest()
        test.sayHello()
    }
}
