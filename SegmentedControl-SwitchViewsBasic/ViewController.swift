//
//  ViewController.swift
//  SegmentedControl-SwitchViewsBasic
//
//  Created by Francis Jemuel Bergonia on 22/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewContainer: UIView!
    var simpleView1: UIView!
    var simpleView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        simpleView1 = SimpleVC1().view
        simpleView2 = SimpleVC2().view
        viewContainer.addSubview(simpleView1)
        viewContainer.addSubview(simpleView2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchViewAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            viewContainer.bringSubview(toFront: simpleView1)
            break
        case 1:
            viewContainer.bringSubview(toFront: simpleView2)
            break
        default:
            break
        }
    }
    
}

