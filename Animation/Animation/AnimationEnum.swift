//
//  AnimationEnum.swift
//  Animation
//
//  Created by tosy on 16.12.22.
//

import UIKit
enum Animations: String, CaseIterable  {
    case shake
    case pop
    case morph
    case squeeze
    case wobble
    case swing
    case flipX
    case flipY
    case fall
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case fadeIn
    case fadeOut
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case flash
}

    
var array = [ Animations.shake,
              Animations.pop,
              Animations.morph,
              Animations.squeeze,
              Animations.wobble,
              Animations.swing,
              Animations.flipX,
              Animations.flipY,
              Animations.fall,
              Animations.squeezeLeft,
              Animations.squeezeRight,
              Animations.squeezeDown,
              Animations.squeezeUp,
              Animations.slideLeft,
              Animations.slideRight,
              Animations.slideDown,
              Animations.slideUp,
              Animations.fadeIn,
              Animations.fadeOut,
              Animations.fadeInLeft,
              Animations.fadeInRight,
              Animations.fadeInDown,
              Animations.fadeInUp,
              Animations.zoomIn,
              Animations.zoomOut,
              Animations.flash ]

enum Curves: String {
    case spring
    case linear
    case easeIn
    case easeOut
    case easeInOut
}
