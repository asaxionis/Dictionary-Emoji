//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Andrew Saxionis on 12/7/16.
//  Copyright © 2016 Andrew Saxionis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var EmojiTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        EmojiTable.dataSource = self
        EmojiTable.delegate = self
        
        
    }
    
    var emojiList = [["😡", "Angry"], ["😍", "Love"], ["😁", "Happy"], ["🤗", "Cutie"], ["🤓", "Geeking"]]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojiList.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        let cell = UITableViewCell()
        
        cell.textLabel?.text = emojiList[indexPath.row][0]
        
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojiList[indexPath.row][0]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!DefinitionEmojiViewController
        defVC.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

