//
//  RemoconUtils.swift
//  remocon
//
//  Created by 鈴木敬三 on 2017/01/24.
//  Copyright © 2017年 鈴木敬三. All rights reserved.
//

import Foundation

class RemoconUtils {
    
    // POST送信
    func submit(text: String) {
        
        let postParams:[String: AnyObject] = ["text" : text as AnyObject]
        
        var request = URLRequest(url: URL(string: "https://hooks.slack.com/services/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")!)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: postParams, options:[])
            
        } catch {
            print("JSON serialization failed:  \(error)")
        }
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: {
            (data, response, error) in
            
            if error != nil {
                print(error)
                return
            }
            
            print("response: \(response!)")
            
            let phpOutput = String(data: data!, encoding: .utf8)!
            print("php output: \(phpOutput)")
        })
        task.resume()
    }
}
