//
//  LoseScreen.swift
//  Bricks
//
//  Created by April on 12/5/14.
//  Copyright (c) 2014 TING. All rights reserved.
//

import Foundation
import SpriteKit

class LoseScreen: SKScene,SKPhysicsContactDelegate  {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        //  Setup Background and World
        let bgImage = SKSpriteNode(imageNamed: "end01")
        self.addChild(bgImage)
        bgImage.position = CGPointMake(self.size.width/2, self.size.height/2)
        //self.backgroundColor = UIColor.blackColor()
        
        // Setup Label
        //var label = SKLabelNode(text: "You Lose, Play Again ?")
        let label = SKLabelNode()
        label.text = "You Got : \(score) Xmas Gifts!"
        label.fontSize = 100
        label.fontColor = SKColor.whiteColor()
        label.position = CGPoint(x: self.frame.width/2, y: self.frame.height/2)
        self.addChild(label)
        
//        scoreLabel.text = "  Score: \(score)   "
//        self.addChild(scoreLabel)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let myTransition = SKTransition.doorsOpenHorizontalWithDuration(2)
        let scene = GameScene(size:CGSize(width: 1152, height: 2048))
        self.view?.presentScene(scene, transition: myTransition)
        
        
        
    }
    
}
