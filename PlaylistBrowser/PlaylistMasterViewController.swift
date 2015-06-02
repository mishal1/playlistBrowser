//
//  ViewController.swift
//  PlaylistBrowser
//
//  Created by Mishal Islam on 02/06/2015.
//  Copyright (c) 2015 Mishal. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {
    
    var playlistArray: [UIImageView] = []
    
    @IBOutlet weak var playlistImageView0: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playlistArray.append(playlistImageView0)
        for index in 0..<playlistArray.count {
            let playlist = Playlist(index: index)
            let playlistImageView = playlistArray[index]
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColour
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetailSegue" {
            let playlistImageView = sender!.view as! UIImageView
            if let index = find(playlistArray, playlistImageView){
                let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
                playlistDetailController.playlist = Playlist(index: index)
            }
        }
    }

    @IBAction func showPlaylistDetail(sender: AnyObject) {
        performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
    }
}

