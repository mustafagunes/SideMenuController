//
//  ContainerVC.swift
//  MGSideMenu
//
//  Created by Mustafa GUNES on 7.12.2018.
//  Copyright © 2018 Mustafa GUNES. All rights reserved.
//

import UIKit
import QuartzCore

// MARK : - Enum's
enum SliderOutState{
    case collapsed
    case leftPanelExpanded
}

enum ShowWichVC {
    case homeVC
}

// MARK : - Definition Enum
var showVC: ShowWichVC = .homeVC

class ContainerVC: UIViewController {

    // MARK : - Global Definitions
    var homeVC: HomeVC!
    var leftVC: LeftSidePanelVC!
    var centerController: UIViewController!
    var currentState: SliderOutState = .collapsed {
        didSet {
//            let shouldShowShadow = (currentState != . collapsed)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
