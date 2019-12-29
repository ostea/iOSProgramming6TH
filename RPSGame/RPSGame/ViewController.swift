//
//  ViewController.swift
//  RPSGame
//
//  Created by cheng chao on 2019/12/28.
//  Copyright © 2019 BAIDU. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
    // 机器人手势
    @IBOutlet weak var robbitSignLabel: UILabel!
    // 结果状态
    @IBOutlet weak var resultDescLabel: UILabel!
    // 下一局button
    @IBOutlet weak var nextGameButton: UIButton!
    
    @IBOutlet weak var rockSignBtn: UIButton!
    @IBOutlet weak var scissorSignBtn: UIButton!
    @IBOutlet weak var paperSiagnBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateRPSUI(compareResult: (player: nil, other: nil, state: GameState.Started))
    }
    
    func randomSign() -> Sign {
        let sign = randomChoice.nextInt()
        if  sign == 0 {
            return .rock
        } else if sign == 1 {
            return .paper
        } else {
            return .scissor
        }
    }
    
    @IBAction func rockBtnAction(_ sender: UIButton) {
        let result=compareSign(playerSign: Sign.rock)
        updateRPSUI(compareResult: result)
    }
    
    @IBAction func scissorBtnAction(_ sender: UIButton) {
        let result=compareSign(playerSign: Sign.scissor)
        updateRPSUI(compareResult: result)
    }
    
    @IBAction func paperBtnAction(_ sender: UIButton) {
        let result=compareSign(playerSign: Sign.paper)
        updateRPSUI(compareResult: result)
    }
    
    @IBAction func nextGame(_ sender: UIButton) {
        updateRPSUI(compareResult: (player: nil, other: nil, state: GameState.Started))
        rockSignBtn.isEnabled = true
        scissorSignBtn.isEnabled = true
        paperSiagnBtn.isEnabled = true
    }
    
    func compareSign(playerSign sign:Sign) ->(Sign,Sign,GameState) {
        var result:(player:Sign,other:Sign,state:GameState)
        let robbitSign = randomSign()
        result.player = sign
        result.other = robbitSign
        result.state = GameState.Draw
        if sign == Sign.rock {
            if robbitSign == Sign.rock {
                result.state = GameState.Draw
            } else if robbitSign == Sign.scissor{
                result.state = GameState.Wins
            } else if robbitSign == Sign.paper {
                result.state = GameState.Loses
            }
        } else if sign == Sign.scissor {
            if robbitSign == Sign.rock {
                result.state = GameState.Loses
            } else if robbitSign == Sign.scissor{
                result.state = GameState.Draw
            } else if robbitSign == Sign.paper {
                result.state = GameState.Wins
            }
        } else if sign == Sign.paper {
            if robbitSign == Sign.rock {
                result.state = GameState.Wins
            } else if robbitSign == Sign.scissor{
                result.state = GameState.Loses
            } else if robbitSign == Sign.paper {
                result.state = GameState.Draw
            }
        }
        return result
    }
    
    func updateRPSUI(compareResult:
        (player:Sign?,other:Sign?,state:GameState?)) -> Void {
        // 用户选择手势
        if let playSign = compareResult.player {
            if playSign == Sign.rock {
                rockSignBtn.layer.isHidden = false
                scissorSignBtn.layer.isHidden = true
                paperSiagnBtn.layer.isHidden = true
            } else if playSign == Sign.scissor{
                rockSignBtn.layer.isHidden = true
                scissorSignBtn.layer.isHidden = false
                paperSiagnBtn.layer.isHidden = true
            } else if playSign == Sign.paper {
                rockSignBtn.layer.isHidden = true
                scissorSignBtn.layer.isHidden = true
                paperSiagnBtn.layer.isHidden = false
            }
            rockSignBtn.isEnabled = false
            scissorSignBtn.isEnabled = false
            paperSiagnBtn.isEnabled = false
        }
        
        // 机器人手势
        if let otherSign = compareResult.other {
            if otherSign == Sign.rock {
                robbitSignLabel.text = "👊"
            } else if otherSign == Sign.scissor{
                robbitSignLabel.text = "✌️"
            } else if otherSign == Sign.paper {
                robbitSignLabel.text = "🖐"
            } else {
                robbitSignLabel.text = "🤖"
            }
        }
        // 状态
        if let rState = compareResult.state {
            switch rState {
            case .Started:
                robbitSignLabel.text = "🤖"
                resultDescLabel.text = "石头、剪刀、布?"
                nextGameButton.layer.isHidden = true
                rockSignBtn.layer.isHidden = false
                scissorSignBtn.layer.isHidden = false
                paperSiagnBtn.layer.isHidden = false
            case .Wins:
                resultDescLabel.text = rState.val
                nextGameButton.layer.isHidden = false
            case .Loses:
                resultDescLabel.text = rState.val
                nextGameButton.layer.isHidden = false
            case .Draw:
                resultDescLabel.text = rState.val
                nextGameButton.layer.isHidden = false
            }
        }
    }
}

