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

        navigationItem.rightBarButtonItem = displayModeButtonItem()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        navigationItem.rightBarButtonItem = displayModeButtonItem()
    }

}
