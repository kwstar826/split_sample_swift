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

        if viewControllers.count > 1 {
            if let nav = viewControllers[1] as? UINavigationController {
                if let items = nav.navigationBar.items,
                let navigationItem = items.first {
                    navigationItem.rightBarButtonItem = displayModeButtonItem()
                }
            }
        }

    }

}
