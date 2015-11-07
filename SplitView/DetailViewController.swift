//
//  DetailViewController.swift
//  SplitView
//
//  Created by Ben Chatelain on 8/25/15.
//  Copyright © 2015 phatblat. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        navigationItem.leftItemsSupplementBackButton = true

        let displayModeButton = UIBarButtonItem(title: "Menu", style: .Plain,
            target: splitViewController!.displayModeButtonItem().target,
            action: splitViewController!.displayModeButtonItem().action)

        navigationItem.leftBarButtonItem = displayModeButton
        navigationItem.rightBarButtonItem = displayModeButton
    }

}
