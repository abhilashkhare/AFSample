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
        Alamofire.request("https://codewithchris.com/code/afsample.json").responseJSON { (response) in
            print(response.result.value)
        }
    }

}

