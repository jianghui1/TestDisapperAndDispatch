//
//  NextViewController.swift
//  TestDisapperAndDispatch
//
//  Created by ys on 16/8/31.
//  Copyright © 2016年 jzh. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    var name: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        Singlon.sharedInstance.getData { (name) in
            print("到时见了")
            print(name)
            self.name = name
            print(self.name)
        }
        
        
    }
    
    deinit {
        print("我挂了")
    }

}
