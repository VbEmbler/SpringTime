//
//  ViewController.swift
//  SpringTime
//
//  Created by Vladimir on 19/09/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var animationNameLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var dampingLabel: UILabel!
    @IBOutlet weak var velocityLabel: UILabel!
    @IBOutlet weak var repeatCountLabel: UILabel!
    @IBOutlet weak var scaleXlabel: UILabel!
    @IBOutlet weak var scaleYLabel: UILabel!
    @IBOutlet weak var rotateLabel: UILabel!
    
    @IBOutlet weak var runButton: UIButton!
    
    var randomAnimation = Animation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomAnimation = randomAnimation.getRandomAnimation()
        setButtonTitle(animation: randomAnimation)
    }
    
    @IBAction func runButtonPresed() {
        runAnimation()
    }
    
    func setLabelsValue(animation: Animation) {
        animationNameLabel.text = animation.name
        curveLabel.text = animation.curve
        forceLabel.text = String.init(format: "%.2F", animation.force)
        delayLabel.text = String.init(format: "%.2F", animation.delay)
        durationLabel.text = String.init(format: "%.2F", animation.duration)
        dampingLabel.text = String.init(format: "%.2F", animation.damping)
        velocityLabel.text = String.init(format: "%.2F", animation.velocity)
        repeatCountLabel.text = String(animation.repeatCount)
        scaleXlabel.text = String.init(format: "%.2F", animation.scaleX)
        scaleYLabel.text = String.init(format: "%.2F", animation.scaleY)
        rotateLabel.text = String.init(format: "%.2F", animation.rotate)
    }
    
    func runAnimation() {
        setLabelsValue(animation: randomAnimation)
        
        springAnimationView.animation = randomAnimation.name
        springAnimationView.curve = randomAnimation.curve
        springAnimationView.force = randomAnimation.force
        springAnimationView.delay = randomAnimation.delay
        springAnimationView.duration = randomAnimation.duration
        springAnimationView.damping = randomAnimation.damping
        springAnimationView.velocity = randomAnimation.velocity
        springAnimationView.repeatCount = Float(randomAnimation.repeatCount)
        springAnimationView.scaleX = randomAnimation.scaleX
        springAnimationView.scaleY = randomAnimation.scaleY
        springAnimationView.rotate = randomAnimation.rotate
        springAnimationView.animate()
        
        randomAnimation = randomAnimation.getRandomAnimation()
        setButtonTitle(animation: randomAnimation)
    }
    
    func setButtonTitle(animation: Animation) {
        runButton.setTitle("Run \(animation.name) animation", for: .normal)
    }
    
}




