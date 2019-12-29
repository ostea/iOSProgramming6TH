//
//  GameState.swift
//  RPSGame
//
//  Created by cheng chao on 2019/12/28.
//  Copyright © 2019 BAIDU. All rights reserved.
//

import Foundation

enum GameState {
    case Started
    case Loses
    case Wins
    case Draw
    
    var val :String {
        switch self {
        case .Started:
            return "石头、剪刀、布?"
        case .Wins:
            return "恭喜你,获取胜利!"
        case .Loses:
            return "失败，加油啦!"
        case .Draw:
            return "平局，再接再厉!"
        }
    }
    
}
