//
//  AnimationEnum.swift
//  Animation
//
//  Created by tosy on 16.12.22.
//

import UIKit
 enum Animations: String, CaseIterable {
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

 enum Curves: String, CaseIterable {
    case spring
    case linear
    case easeIn
    case easeOut
    case easeInOut
}

let arrayAnimations: [String] = Animations.allCases.map { $0.rawValue }
let arrayCurves: [String] = Curves.allCases.map { $0.rawValue }
var viewColors: [UIColor] = [.red, .blue, .black, .green, .yellow, .darkGray]

