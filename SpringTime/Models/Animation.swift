//
//  Animation.swift
//  SpringTime
//
//  Created by Vladimir on 19/09/2020.
//  Copyright © 2020 Embler. All rights reserved.
//
import Spring

struct Animation {
    var name = ""
    var curve = ""
    var force: CGFloat = 0.0
    var delay: CGFloat = 0.0
    var duration: CGFloat = 0.0
    var damping: CGFloat = 0.0
    var velocity: CGFloat = 0.0
    var repeatCount = 0
    var scaleX: CGFloat = 0.0
    var scaleY: CGFloat = 0.0
    var rotate: CGFloat = 0.0
    
    func getRandomAnimation() -> Animation {
        let springAnimations = [Spring.AnimationPreset.FadeIn,
                                Spring.AnimationPreset.FadeInDown,
                                Spring.AnimationPreset.FadeInLeft,
                                Spring.AnimationPreset.FadeInRight,
                                Spring.AnimationPreset.FadeInUp,
                                Spring.AnimationPreset.FadeOut,
                                Spring.AnimationPreset.FadeOutIn,
                                Spring.AnimationPreset.Fall,
                                Spring.AnimationPreset.Flash,
                                Spring.AnimationPreset.FlipX,
                                Spring.AnimationPreset.FlipY,
                                Spring.AnimationPreset.Morph,
                                Spring.AnimationPreset.Pop,
                                Spring.AnimationPreset.Shake,
                                Spring.AnimationPreset.SlideDown,
                                Spring.AnimationPreset.SlideLeft,
                                Spring.AnimationPreset.SlideRight,
                                Spring.AnimationPreset.SlideUp,
                                Spring.AnimationPreset.Squeeze,
                                Spring.AnimationPreset.SqueezeDown,
                                Spring.AnimationPreset.SqueezeLeft,
                                Spring.AnimationPreset.SqueezeRight,
                                Spring.AnimationPreset.SqueezeUp,
                                Spring.AnimationPreset.Swing,
                                Spring.AnimationPreset.Wobble,
                                Spring.AnimationPreset.ZoomIn,
                                Spring.AnimationPreset.ZoomOut]
        let indexName = Int.random(in: 0..<springAnimations.count)
        let name = springAnimations[indexName].rawValue
        
        let springCurves = [Spring.AnimationCurve.EaseIn,
                            Spring.AnimationCurve.EaseOut,
                            Spring.AnimationCurve.EaseInOut,
                            Spring.AnimationCurve.Linear,
                            Spring.AnimationCurve.Spring,
                            Spring.AnimationCurve.EaseInSine,
                            Spring.AnimationCurve.EaseOutSine,
                            Spring.AnimationCurve.EaseInOutSine,
                            Spring.AnimationCurve.EaseInQuad,
                            Spring.AnimationCurve.EaseOutQuad,
                            Spring.AnimationCurve.EaseInOutQuad,
                            Spring.AnimationCurve.EaseInCubic,
                            Spring.AnimationCurve.EaseOutCubic,
                            Spring.AnimationCurve.EaseInOutCubic,
                            Spring.AnimationCurve.EaseInQuart,
                            Spring.AnimationCurve.EaseOutQuart,
                            Spring.AnimationCurve.EaseInOutQuart,
                            Spring.AnimationCurve.EaseInQuint,
                            Spring.AnimationCurve.EaseOutQuint,
                            Spring.AnimationCurve.EaseInOutQuint,
                            Spring.AnimationCurve.EaseInExpo,
                            Spring.AnimationCurve.EaseOutExpo,
                            Spring.AnimationCurve.EaseInOutExpo,
                            Spring.AnimationCurve.EaseInCirc,
                            Spring.AnimationCurve.EaseOutCirc,
                            Spring.AnimationCurve.EaseInOutCirc,
                            Spring.AnimationCurve.EaseInBack,
                            Spring.AnimationCurve.EaseOutBack,
                            Spring.AnimationCurve.EaseInOutBack]
        let indexCurve = Int.random(in: 0..<springCurves.count)
        let curve = springCurves[indexCurve].rawValue
        
        let force = CGFloat.random(in: 0.5...1)
        let delay = CGFloat.random(in: 0.2...0.5)
        let duration = CGFloat.random(in: 0.5...1.5)
        let damping = CGFloat.random(in: 0.2...0.8)
        let velocity = CGFloat.random(in: 0.2...1)
        let repeatCount = Int.random(in: 1...4)
        let scaleX = CGFloat.random(in: 5...15)
        let scaleY = CGFloat.random(in: 5...15)
        let rotate = CGFloat.random(in: 5...15)
        
        let animation = Animation(name: name,
                                  curve: curve,
                                  force: force,
                                  delay: delay,
                                  duration: duration,
                                  damping: damping,
                                  velocity: velocity,
                                  repeatCount: repeatCount,
                                  scaleX: scaleX,
                                  scaleY: scaleY,
                                  rotate: rotate) 
        return animation
    }
}

