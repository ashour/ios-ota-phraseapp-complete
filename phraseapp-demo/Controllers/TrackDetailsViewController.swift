//
//  TrackDetailsViewController.swift
//  phraseapp-demo
//
//  Created by Mohammad Ashour on 2019-05-25.
//  Copyright © 2019 Mohammad Ashour. All rights reserved.
//

import UIKit

class TrackDetailsViewController: UIViewController {
    
    @IBOutlet weak var trackNameHeaderLabel: UILabel!
    
    @IBOutlet weak var artistNameHeaderLabel: UILabel!
    
    @IBOutlet weak var releaseDateHeaderLabel: UILabel!
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    @IBOutlet weak var copyrightLabel: UILabel!
    
    var track: Track?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = NSLocalizedString("trackDetailsTitle", comment: "")
        
        if let track = track {
            trackNameHeaderLabel.text = getLocalizedHeaderText(key: "trackNameHeader")
            
            artistNameHeaderLabel.text = getLocalizedHeaderText(key: "artistNameHeader")
            
            releaseDateHeaderLabel.text = getLocalizedHeaderText(key: "releaseDateHeader")
            
            trackNameLabel.text = track.trackName
        
            artistNameLabel.text = track.artistName
        
            releaseDateLabel.text = track.releaseDate
            
            copyrightLabel.text = getCopyrightText(artistName: track.artistName)
        }
    }
    
    func setup(with track: Track) {
        self.track = track
    }
    
    fileprivate func getLocalizedHeaderText(key: String) -> String {
        return NSLocalizedString(key, comment: "")
            .localizedUppercase
    }
    
    fileprivate func getCopyrightText(artistName: String) -> String {
        let format = NSLocalizedString("copyright", comment: "")
        
        let currentYear = "\(Calendar.current.component(.year, from: Date()))"
        
        return String.localizedStringWithFormat(format, currentYear, artistName)
    }

}
