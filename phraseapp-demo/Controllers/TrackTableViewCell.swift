//
//  TrackTableViewCell.swift
//  phraseapp-demo
//
//  Created by Mohammad Ashour on 2019-05-25.
//  Copyright © 2019 Mohammad Ashour. All rights reserved.
//

import UIKit

class TrackTableViewCell: UITableViewCell {
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    func setup(with track: Track) {
        trackNameLabel.text = track.trackName
        
        artistNameLabel.text = track.artistName
        
        releaseDateLabel.text = track.releaseDate
    }
}
