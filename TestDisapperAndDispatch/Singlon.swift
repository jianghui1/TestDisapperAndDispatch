//
//  Singlon.swift
//  TestDisapperAndDispatch
//
//  Created by ys on 16/8/31.
//  Copyright © 2016年 jzh. All rights reserved.
//

import Foundation

private let sharedKraken = Singlon()

class Singlon: NSObject {
    class var sharedInstance: Singlon {
        return sharedKraken
    }
    
    func getData(block: ((name: String) -> ())?) {
        
        
        dispatch_async(dispatch_get_global_queue(0, 0)) {
//            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(5 * Double(NSEC_PER_SEC)))
//            dispatch_after(time, dispatch_get_main_queue(), {
        
            for _ in 0...100000 {
                for _ in 0...10000 {
                    
                }
            }
            
            dispatch_async(dispatch_get_main_queue(), {
                if let block = block {
                    block(name: "hehe")
                }
            })
            
//            })
        }
    }
}
