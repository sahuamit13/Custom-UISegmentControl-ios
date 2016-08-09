//
//  ViewController.swift
//  UISegmentControl
//
//  Created by amit sahu on 29/04/16.
//  Copyright © 2016 mm2cinema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  //  @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: TabySegmentedControl!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.initUI()
        // Do any additional setup after loading the view, typically from a nib.
        textLabel.text = "First Segment Selected"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func segmentedControlAction(sender: AnyObject) {
        
        if(segmentedControl.selectedSegmentIndex == 0){
            textLabel.text = "First segment selected"
        }else if(segmentedControl.selectedSegmentIndex == 1){
            textLabel.text = "Second segment selected"
        }else if(segmentedControl.selectedSegmentIndex==2){
            textLabel.text = "Third segment selected"
        }
        
    }
}

