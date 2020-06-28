//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var track = 0 // Number to keep track of story progress
    
    let stories = [Story(title: "You see a fork in the road.", choice1: "Take a left", choice2: "Take a right"), Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"), Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI(track)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.titleLabel!.text! == choice1Button.titleLabel!.text! {
            track = 1
        } else { // Choice 2 was made
            track = 2
        }
        updateUI(track)
    }
    
    func updateUI(_ storyNum: Int) {
        storyLabel.text! = stories[storyNum].storyTitle
        choice1Button.setTitle(stories[storyNum].choice1, for: .normal)
        choice2Button.setTitle(stories[storyNum].choice2, for: .normal)
    }
    
}

