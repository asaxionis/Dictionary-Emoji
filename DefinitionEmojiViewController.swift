//
//  DefinitionEmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Andrew Saxionis on 12/7/16.
//  Copyright © 2016 Andrew Saxionis. All rights reserved.
//

import UIKit

class DefinitionEmojiViewController: UIViewController {
    
    var emoji = "None"

    @IBOutlet weak var EmojiType: UILabel!
    
    @IBOutlet weak var EmojiDef: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        EmojiType.text = emoji
        
        /**
         How to send data from the array?
        **/
        EmojiDef.text = "Swag"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
