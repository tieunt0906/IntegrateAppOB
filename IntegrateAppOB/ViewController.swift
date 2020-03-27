//
//  ViewController.swift
//  IntegrateAppOB
//
//  Created by vbee on 3/27/20.
//  Copyright © 2020 vbee. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    @IBAction func openChatbot(_ sender: Any) {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController =
            FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

