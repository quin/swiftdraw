//
//  GameScene.swift
//  swiftdraw
//
//  Created by Quincy Babin on 8/12/14.
//  Copyright (c) 2014 Quincy Babin. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    //setting up global variables
    
    
    //the path of where the user is currently drawing
    var currentPath = CGPathCreateMutable()
    
    //drawing that will be altered to give an effect of drawing on the screen
    var currentDrawing = SKShapeNode()
    
    //the stroke width of the drawing
    let lineWidth : CGFloat = 4
    
    
    override func didMoveToView(view: SKView) {
        setupScene()
        func setupGlobals(){
    
            // changing the stroke color to black
            currentDrawing.strokeColor = UIColor.blackColor()
            
            //setting up the width of the line
            currentDrawing.lineWidth = lineWidth
        }
        
        // detects when user swipes across the screen
        func setupGestureRecognizers(){
            self.view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: Selector("handlePan:")))
        }
        
        



        
//        /* Setup your scene here */
//        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
//        myLabel.text = "Hello, World!";
//        myLabel.fontSize = 65;
//        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
//        
//        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
//        for touch: AnyObject in touches {
//            let location = touch.locationInNode(self)
//            
//            let sprite = SKSpriteNode(imageNamed:"Spaceship")
//            
//            sprite.xScale = 0.5
//            sprite.yScale = 0.5
//            sprite.position = location
//            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
//            
//            sprite.runAction(SKAction.repeatActionForever(action))
//            
//            self.addChild(sprite)
//        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    //setting up a function for the scene
    func setupScene(){
        
        //setting background color to white
        self.backgroundColor = UIColor.whiteColor()
        
        //setting world gravity to -9.8
        self.physicsWorld.gravity = CGVectorMake(0, -9.8)
        
        //setting physics for the body
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height))
    }
    
}
