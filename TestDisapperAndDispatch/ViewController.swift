//
//  ViewController.swift
//  TestDisapperAndDispatch
//
//  Created by ys on 16/8/31.
//  Copyright © 2016年 jzh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var musicView: MusicView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    var i: Int = 0
    
    @IBAction func showViewAction(sender: UIButton) {
        
        i += 1
        
        if i % 2 == 0 {
            if self.musicView != nil {
                self.musicView?.removeFromSuperview()
                self.musicView = nil
            }
        }
        else {
            let musicView = MusicView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
            self.musicView = musicView
            self.view.addSubview(musicView)
            i = -1
        }
        
        
    }
    
    
    
    deinit {
        print("大哥还在吗")
    }


}

