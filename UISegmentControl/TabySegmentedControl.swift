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
        
        self.setBackgroundImage(backgroundImage, for: .normal, barMetrics: .default)
        self.setBackgroundImage(backgroundImageSelected, for: .highlighted, barMetrics: .default)
        self.setBackgroundImage(backgroundImageSelected, for: .selected, barMetrics: .default)
        
        self.setDividerImage(dividerImage, forLeftSegmentState: .normal, rightSegmentState: .selected, barMetrics: .default)
        self.setDividerImage(dividerImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        self.setDividerImage(dividerImage, forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    }
    
    func setupFonts(){
        let font = UIFont.systemFont(ofSize: 12)
        
        let normalTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.gray,
            NSAttributedString.Key.font: font
        ]
        
        let selectedTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font: font
        ]
        
        self.setTitleTextAttributes(normalTextAttributes, for: .normal)
        self.setTitleTextAttributes(normalTextAttributes, for: .highlighted)
        self.setTitleTextAttributes(selectedTextAttributes, for: .selected)
    }

}
