//
//  ViewController.swift
//  AFSample
//
//  Created by Abhilash Khare on 7/20/18.
//  Copyright © 2018 Abhilash Khare. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("https://codewithchris.com/code/afsample.json", method: .get).responseJSON { (response) in
            if let JSON = response.result.value as? [String : Any] {
                print(JSON["firstkey"] as! String)
                print(JSON["secondkey"] as! [String])
            }
        }
    }

}

