//
//  ViewController.swift
//  PushFun
//
//  Created by zappycode on 6/29/17.
//  Copyright © 2017 Nick Walter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let url = URL(string: "https://fcm.googleapis.com/fcm/send") {
            var request = URLRequest(url: url)
            request.allHTTPHeaderFields = ["Content-Type":"application/json","Authorization":"key=AAAAEvOYuY0:APA91bEzMscHSrCquCMN-dxOCpctI5eWMs6l4pjGiF93e1pQR3zu-rRnS8lUl-7ld7GZu4UVA7q2hS0ov4Lpi_QLAFiRx1U37ZTLVliyjcl4fVn0a9xbJtax1N-BMaWZBMv9hd2ehLfK"]
            request.httpMethod = "POST"
            request.httpBody = "{\"to\":\"cHP5LrypYj4:APA91bEoU1x_MlRfCcmSufZNn9Fk5rjFfjoK9QfWUaX_gDjpdjuJiUQ9YJwboLC5a_ypctUBFNGEPYX5jsFdfLh5fbHMOSCBuO6IN9WRvS3L7oVKatAtywoZNKn3Hun1ugeOpmG0pUGB\",\"notification\":{\"title\":\"THIS IS FROM HTTP!\"}}".data(using: .utf8)
            
            URLSession.shared.dataTask(with: request, completionHandler: { (data, urlresponse, error) in
                if error != nil {
                    print(error!)
                }
                print(String(data: data!, encoding: .utf8)!)
            }).resume()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

