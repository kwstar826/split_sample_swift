//
//  SplitViewController.swift
//  SplitView
//
//  Created by phatblat on 9/4/14.
//  Copyright (c) 2014 phatblat. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

}

// MARK: - SplitViewControllerDelegate

extension SplitViewController: UISplitViewControllerDelegate {

    func splitViewControllerSupportedInterfaceOrientations(splitViewController: UISplitViewController) -> UIInterfaceOrientationMask {
        return .All
    }

}
