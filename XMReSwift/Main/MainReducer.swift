//
//  MainReducer.swift
//  XMReSwift
//
//  Created by mifit on 2017/11/30.
//  Copyright © 2017年 Mifit. All rights reserved.
//

import ReSwift

func counterReducer(action: Action, state: MainState?) -> MainState {
    var state = state ?? MainState()
    
    switch action {
    case _ as CounterActionIncrease:
        state.counter += 1
        let ta = action as! CounterActionIncrease
        ta.descript()
    case _ as CounterActionDecrease:
        state.counter -= 1
        let ta = action as! CounterActionDecrease
        ta.descript()
    default:
        break
    }
    
    return state
}
