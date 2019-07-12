//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Ellen McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🥵" : "stressed", "😇" : "glowing", "😜" : "spicy", "😡" : "angry", "🙄" : "annoyed", "🤮" : "sick"]
    let customMessages = ["stressed" : ["take a break", "get some air", "take a deep breath"], "glowing" : ["keep shining", "do your thing", "work it girl"], "spicy" : ["get it!", "do your thing", "keep having fun"], "angry" : ["smile!", "let off some steam", "punch a pillow"], "annoyed" : ["spill the tea sis", "you can do this", "walk away honey"], "sick" : ["aww! feel better", "take a day off", "eat some soup"]]

    @IBAction func showMessage(sender: UIButton){
        let selectedEmotion = sender.titleLabel?.text
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int.random(in: 0...2)]
        
        let alertController = UIAlertController(title: "\(selectedEmotion!): \(emojis[selectedEmotion!]!)", message: emojiMessage
            
            , preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
            }

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    


}

}
