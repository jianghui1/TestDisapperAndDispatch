//
//  MusicView.swift
//  TestDisapperAndDispatch
//
//  Created by ys on 16/8/31.
//  Copyright © 2016年 jzh. All rights reserved.
//

import UIKit

class MusicView: UIView {

    var name1: NSString? = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.redColor()
        
        Singlon.sharedInstance.getData { (name) in
            print("到时见了")
            print(name)
            self.name1 = name as NSString
            print(self.name1)
        }

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    deinit {
        print("Music挂了")
    }
}
