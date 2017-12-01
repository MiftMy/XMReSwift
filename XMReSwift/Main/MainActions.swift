//
//  MainAction.swift
//  XMReSwift
//
//  Created by mifit on 2017/11/30.
//  Copyright © 2017年 Mifit. All rights reserved.
//

import ReSwift

struct CounterActionIncrease: Action {
    func descript() {
        print("你好啊，+");
    }
}
struct CounterActionDecrease: Action {
    func descript() {
        print("你好啊，-");
    }
}
