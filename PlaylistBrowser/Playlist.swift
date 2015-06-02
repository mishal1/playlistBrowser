//
//  Playlist.swift
//  PlaylistBrowser
//
//  Created by Mishal Islam on 02/06/2015.
//  Copyright (c) 2015 Mishal. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    
    var title: String
    var description: String
    var icon: UIImage
    var largeIcon: UIImage
    var artists: [String] = []
    var backgroundColour: UIColor = UIColor.clearColor()
    
    init(index: Int){
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]
        title = playlistDictionary["title"] as! String
        description = playlistDictionary["description"] as! String
        let iconName = playlistDictionary["icon"] as! String
        icon = UIImage(named: iconName)!
        let largeIconName = playlistDictionary["largeIcon"] as! String
        largeIcon = UIImage(named: largeIconName)!
        artists += playlistDictionary["artists"] as! [String]
        let coloursDictionary = playlistDictionary["backgroundColor"] as! [String: CGFloat]
        backgroundColour = rgbColourFromDictionary(coloursDictionary)
    }
    
    func rgbColourFromDictionary(colourDictionary: [String: CGFloat]) ->UIColor{
        let red = colourDictionary["red"]!
        let green = colourDictionary["green"]!
        let blue = colourDictionary["blue"]!
        let alpha = colourDictionary["alpha"]!
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
}