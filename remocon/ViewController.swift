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
    }

    @IBAction func buttonPush(_ sender: UIButton) {
        remoconUtils.submit(text: sender.currentTitle! as String)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
