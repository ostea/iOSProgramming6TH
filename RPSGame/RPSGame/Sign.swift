//
//  Sign.swift
//  RPSGame
//
//  Created by cheng chao on 2019/12/28.
//  Copyright © 2019 BAIDU. All rights reserved.
//

import Foundation

enum Sign {
    
    case rock,scissor,paper
    
    var emoji:String {
        switch self {
        case .rock:
            return "👊"
        case .scissor:
            return "✌️"
        case .paper:
            return "🖐"
        }
    }
    
}
