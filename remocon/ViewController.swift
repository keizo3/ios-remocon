//
//  ViewController.swift
//  remocon
//
//  Created by 鈴木敬三 on 2017/01/20.
//  Copyright © 2017年 鈴木敬三. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let remoconUtils = RemoconUtils()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        remoconUtils.submit(text: "テレビoff")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

