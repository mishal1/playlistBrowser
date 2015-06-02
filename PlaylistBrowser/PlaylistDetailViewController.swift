//
//  PlaylistDetailViewController.swift
//  PlaylistBrowser
//
//  Created by Mishal Islam on 02/06/2015.
//  Copyright (c) 2015 Mishal. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    @IBOutlet weak var buttonPressLabel: UILabel!
    
    var playlist: Playlist?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if playlist != nil {
            buttonPressLabel.text = playlist!.title
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
