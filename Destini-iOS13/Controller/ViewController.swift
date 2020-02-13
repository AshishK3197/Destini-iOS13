//
//  ViewController.swift
//  Destini-iOS13
//


import UIKit

class ViewController: UIViewController {
    
   var story = storyContent()

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()

    }
    
    @IBAction func choiceTapped(_ sender: UIButton) {
        
        story.nextStoryTitle(userChoice: sender.currentTitle!)
        updateQuestion()
        
    }
    
    
    func updateQuestion(){
        storyLabel.text = story.getStoryText()
        choice1Button.setTitle(story.getOptionForChoice1(), for: .normal)
        choice2Button.setTitle(story.getOPtionForChoice2(), for: .normal)
    }
    

}

