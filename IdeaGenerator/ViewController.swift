//
//  ViewController.swift
//  IdeaGenerator
//
//  Created by Leith Reardon on 7/3/18.
//  Copyright © 2018 Leith Reardon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ideas = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let receiver = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]
    
    @IBOutlet weak var typeOfIdea: UILabel!
    @IBOutlet weak var typeOfPerson: UILabel!
    @IBOutlet weak var ideaButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ideaButtonTapped(_ sender: UIButton) {
        generateIdea()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateIdea()
    }
    
    func generateIdea() {
        let ideaIndex = UInt32(ideas.count)
        let randomIdeaIndex = Int(arc4random_uniform(ideaIndex))
        
        let receiverIndex = UInt32(receiver.count)
        let randomReceiverIndex = Int(arc4random_uniform(receiverIndex))
        
        typeOfIdea.text = ideas[randomIdeaIndex]
        typeOfPerson.text = receiver[randomReceiverIndex]
    }
    
}

