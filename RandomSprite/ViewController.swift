//
//  ViewController.swift
//  RandomSprite
//
//  Created by Андрей Соболев on 24.11.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springButton: SpringButton!
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    
    var animation = Animation.getRandomAnimation()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.delay = 0.3
        springButton.setTitle("Next \(animation.name)", for: .normal)
    }
    
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = animation.name
        springAnimationView.curve =  animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration

        springAnimationView.animate()
        
        animationLabel.text = animation.name
        curveLabel.text = animation.curve
        forceLabel.text = String(round(Float(animation.force) * 1000) / 1000)
        durationLabel.text = String(round(Float(animation.duration) * 1000) / 1000)
        
        animation = Animation.getRandomAnimation()
        
        sender.setTitle("Next \(animation.name)", for: .normal)
    }
}
