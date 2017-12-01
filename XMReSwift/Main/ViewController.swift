//
//  ViewController.swift
//  XMReSwift
//
//  Created by mifit on 2017/11/30.
//  Copyright © 2017年 Mifit. All rights reserved.
//

import UIKit
import ReSwift

let mainStore = Store<MainState>(
    reducer: counterReducer,
    state: nil
)


class ViewController: UIViewController ,StoreSubscriber {
    typealias StoreSubscriberStateType = MainState
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainStore.subscribe(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func newState(state: MainState) {
        //状态改变，反馈UI层
        counterLabel.text = "\(mainStore.state.counter)"
    }
    
    @IBAction func downTouch(_ sender: AnyObject) {
        mainStore.dispatch(CounterActionDecrease());
    }
    @IBAction func upTouch(_ sender: AnyObject) {
        mainStore.dispatch(CounterActionIncrease());
    }
}

