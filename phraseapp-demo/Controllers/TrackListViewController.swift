//
//  TrackListViewController.swift
//  phraseapp-demo
//
//  Created by Mohammad Ashour on 2019-05-25.
//  Copyright © 2019 Mohammad Ashour. All rights reserved.
//

import UIKit

class TrackListViewController: UIViewController {
    static let CELL_ID = "TRACK_TABLEVIEW_CELL"
    
    static let TRACK_DETAIL_SEGUE_ID = "TRACK_DETAIL_SEGUE"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = NSLocalizedString("trackListTitle", comment: "")
                
        tableView.dataSource = self
        
        tableView.delegate = self
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! TrackDetailsViewController
        
        let trackIndex = sender as! Int
        
        controller.setup(with: tracks[trackIndex])
    }
}

// MARK: - UITableViewDataSource
extension TrackListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: TrackListViewController.CELL_ID)
            as! TrackTableViewCell
        
        cell.setup(with: tracks[indexPath.row])
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension TrackListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(
            withIdentifier: TrackListViewController.TRACK_DETAIL_SEGUE_ID,
            sender: indexPath.row)
    }
}
