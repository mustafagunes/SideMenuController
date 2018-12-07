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
    
    var isHidden = false
    var tap: UIGestureRecognizer!
    let centerPanelExpandedOffset: CGFloat = 160
    
    var currentState: SliderOutState = .collapsed { didSet {
            let shouldShowShadow = (currentState != . collapsed)
            shouldShowShadowForCenterViewController(status: shouldShowShadow)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func initCenter(screen: ShowWichVC) {
        // TODO : ...
    }
    
    override var prefersStatusBarHidden: Bool {
        return isHidden
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return UIStatusBarAnimation.slide
    }
}

extension ContainerVC: SideMenuDelegate {
    
    func toggleLeftPanel() {
        let notAlreadyExpanded = (currentState != .leftPanelExpanded)
        
        if notAlreadyExpanded {
            addLeftPanelViewController()
        }
        animateLeftPanel(shouldExpand: notAlreadyExpanded)
    }
    
    func addLeftPanelViewController() {
        if leftVC == nil {
            leftVC = UIStoryboard.leftViewController()
            addChildSidePanelViewController(leftVC!)
        }
    }
    
    func animateLeftPanel(shouldExpand: Bool) {
        // TODO : ...
    }
    
    func addChildSidePanelViewController(_ sidePanelController: LeftSidePanelVC) {
        view.insertSubview(sidePanelController.view, at: 0)
        addChildViewController(sidePanelController)
        sidePanelController.didMove(toParentViewController: self)
    }
    
    func shouldShowShadowForCenterViewController(status: Bool) {
        if status == true { centerController.view.layer.shadowOpacity = 0.6 }
        else { centerController.view.layer.shadowOpacity = 0.6 }
    }
}

private extension UIStoryboard {
    
    class func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func leftViewController() -> LeftSidePanelVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: "LeftSidePanelVC") as? LeftSidePanelVC
    }
    
    class func homeVC() -> HomeVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: "HomeVC") as? HomeVC
    }
}
