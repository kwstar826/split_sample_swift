//
//  PrimaryTableViewController.swift
//  SplitView
//
//  Created by Ben Chatelain on 8/25/15.
//  Copyright © 2015 phatblat. All rights reserved.
//

import UIKit

class PrimaryTableViewController: UITableViewController {

    // MARK: - UIViewController

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            var color = UIColor.whiteColor()

            switch identifier {
            case "ShowDetailBlue":
                color = UIColor.blueColor()
            case "ShowDetailPurple":
                color = UIColor.purpleColor()
            case "ShowDetailOrange":
                color = UIColor.orangeColor()
            default:
                debugPrint("Unhandled segue identifier \(identifier)")
            }

            if let nav = segue.destinationViewController as? UINavigationController,
            let vc = nav.viewControllers.first {
                vc.view.backgroundColor = color
            }
        }

        // Add the "expand" button to the navbar
        segue.destinationViewController.navigationItem.rightBarButtonItem = splitViewController?.displayModeButtonItem()
    }

}
