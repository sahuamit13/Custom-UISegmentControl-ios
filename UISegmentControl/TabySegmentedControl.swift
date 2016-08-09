//
//  TabySegmentedControl.swift
//  UISegmentControl
//
//  Created by amit sahu on 29/04/16.
//  Copyright © 2016 mm2cinema. All rights reserved.
//

import UIKit

class TabySegmentedControl: UISegmentedControl {
    
    func initUI(){
        setupBackground()
        setupFonts()
    
    }
    
    func setupBackground(){
        let backgroundImage = UIImage(named: "segmented_unselected_bg")
        let dividerImage = UIImage(named: "seperator")
        let backgroundImageSelected = UIImage(named: "highlighter")
        
        
        self.setBackgroundImage(backgroundImage, forState: .Normal, barMetrics: .Default)
        self.setBackgroundImage(backgroundImageSelected, forState: .Highlighted, barMetrics: .Default)
        self.setBackgroundImage(backgroundImageSelected, forState: .Selected, barMetrics: .Default)
        
        self.setDividerImage(dividerImage, forLeftSegmentState: .Normal, rightSegmentState: .Selected, barMetrics: .Default)
        self.setDividerImage(dividerImage, forLeftSegmentState: .Selected, rightSegmentState: .Normal, barMetrics: .Default)
        self.setDividerImage(dividerImage, forLeftSegmentState: .Normal, rightSegmentState: .Normal, barMetrics: .Default)
    }
    
    func setupFonts(){
        let font = UIFont.systemFontOfSize(12)
        
        
        let normalTextAttributes = [
            NSForegroundColorAttributeName: UIColor.grayColor(),
            NSFontAttributeName: font
        ]
        
        let selectedTextAttributes = [
            NSForegroundColorAttributeName: UIColor.blackColor(),
            NSFontAttributeName: font
        ]
        
        self.setTitleTextAttributes(normalTextAttributes, forState: .Normal)
        self.setTitleTextAttributes(normalTextAttributes, forState: .Highlighted)
        self.setTitleTextAttributes(selectedTextAttributes, forState: .Selected)
    }

}
