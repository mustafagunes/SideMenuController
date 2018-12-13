//
//  SideMenuDelegate.swift
//  MGSideMenu
//
//  Created by Mustafa GUNES on 7.12.2018.
//  Copyright © 2018 Mustafa GUNES. All rights reserved.
//

import UIKit

public protocol SideMenuDelegate {
    func toggleLeftPanel()
    func addLeftPanelViewController()
    func animateLeftPanel(shouldExpand: Bool)
}
