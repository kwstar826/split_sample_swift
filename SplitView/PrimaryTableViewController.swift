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
            switch identifier {
            case "ShowDetailBlue":
                segue.destinationViewController.view.backgroundColor = UIColor.blueColor()
            case "ShowDetailPurple":
                segue.destinationViewController.view.backgroundColor = UIColor.purpleColor()
            case "ShowDetailOrange":
                segue.destinationViewController.view.backgroundColor = UIColor.orangeColor()
            default:
                debugPrint("Unhandled segue identifier \(identifier)")
            }
        }
    }

}
