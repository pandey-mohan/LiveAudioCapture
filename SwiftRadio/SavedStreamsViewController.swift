//
//  SavedStreamsViewController.swift
//  SwiftRadio
//
//  Created by mohan on 11/4/18.
//  Copyright © 2018 matthewfecher.com. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class SavedStreamsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.recordingTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
    }
    
    @IBOutlet weak var recordingTableView: UITableView!
    
    var savedURLs = [URL]()
    
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "cell"
    
    
    func discardRecording(atIndex: Int){
        
//        let fileNameToDelete = recordingName ?? "default.mp3"
//        var filePath = ""
//
//        // Fine documents directory on device
//        let dirs : [String] = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.allDomainsMask, true)
//
//        if dirs.count > 0 {
//            let dir = dirs[0] //documents directory
//            filePath = dir.appendingFormat("/" + fileNameToDelete)
//            print("Local path = \(filePath)")
//
//        } else {
//            print("Could not find local directory to store file")
//            return
//        }
        let url = savedURLs[atIndex]
        
        do {
            let fileManager = FileManager.default
            
            // Check if file exists
            //if fileManager.fileExists(atPath: filePath) {
                // Delete file
                
                try fileManager.removeItem(at: url)
                savedURLs.remove(at: atIndex)
                recordingTableView.reloadData()
//            } else {
//                print("File does not exist")
//            }
            
        }
        catch let error as NSError {
            print("An error took place: \(error)")
        }
        
        
    }
    // don't forget to hook this up from the storyboard


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension SavedStreamsViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedURLs.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        cell.textLabel?.text = savedURLs[indexPath.row].lastPathComponent
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row). with url \(savedURLs[indexPath.row])")
        playDownload(url: savedURLs[indexPath.row])
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //delete the recording...
            discardRecording(atIndex: indexPath.row)
        }
    }
    
    func playDownload(url: URL) {
        let playerViewController = AVPlayerViewController()
        if #available(iOS 11.0, *) {
            playerViewController.entersFullScreenWhenPlaybackBegins = true
        } else {
            // Fallback on earlier versions
        }
        if #available(iOS 11.0, *) {
            playerViewController.exitsFullScreenWhenPlaybackEnds = true
        } else {
            // Fallback on earlier versions
        }
        
        if let main = self.navigationController{
            
            if main.viewControllers.count > 0{
                if let stationsController = main.viewControllers[0] as? StationsViewController{
                    stationsController.radioPlayer.player.stop()
                }
            }
        }
        
        present(playerViewController, animated: true, completion: nil)
        let player = AVPlayer(url: url)
        playerViewController.player = player
        player.play()
    }
}
