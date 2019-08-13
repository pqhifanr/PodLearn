//
//  First.swift
//  PodLearn
//
//  Created by pengquanhua on 2019/8/12.
//  Copyright © 2019 ifanr. All rights reserved.
//

import Foundation
import PayModule

@objc class Test: NSObject {
    @objc func sayHello() {
        print("helloworld")

        AlipaySDK.defaultService()
    }
}
