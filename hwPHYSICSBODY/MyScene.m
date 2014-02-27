//
//  MyScene.m
//  PhysicsBodyFuture
//
//  Created by Jasmine Wright on 2/18/14.
//  Copyright (c) 2014 Jasmine Wright. All rights reserved.
//

#import "MyScene.h"


@interface MyScene()
@property SKSpriteNode* mySquare1;
@property SKSpriteNode* mySquare2;
@property SKSpriteNode* mySquare3;
@property SKSpriteNode* mySquare4;
@property SKSpriteNode* mySquare5;
@property SKSpriteNode* mySquare6;
@property SKSpriteNode* mySquare7;
@property SKSpriteNode* mySquare8;
@property SKSpriteNode* mySquare9;
@property SKSpriteNode* mySquare10;
@property SKSpriteNode* myShelf1;
@property SKSpriteNode* myShelf2;
@property SKPhysicsJoint* myJoint1;
@property SKPhysicsJoint* myJoint2;
@property SKPhysicsJoint* myJoint3;
@property SKPhysicsJoint* myJoint4;
@property SKPhysicsJoint* myJoint5;
@property SKPhysicsJoint* myJoint6;
@property SKPhysicsJoint* myJoint7;
@property SKPhysicsJoint* myJoint8;
@property SKPhysicsJoint* myJoint9;

@end

@implementation MyScene

-(void)spawnSquares{
    NSLog(@"Entered SpawnSquares");
    
    _mySquare1 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(66, 66)];
    _mySquare2 = [[SKSpriteNode alloc]initWithColor:[SKColor greenColor] size:CGSizeMake(70, 50)];
    _mySquare3 = [[SKSpriteNode alloc]initWithColor:[SKColor brownColor] size:CGSizeMake(40, 20)];
    _mySquare4 = [[SKSpriteNode alloc]initWithColor:[SKColor brownColor] size:CGSizeMake(30, 50)];
    _mySquare5 = [[SKSpriteNode alloc]initWithColor:[SKColor brownColor] size:CGSizeMake(40, 20)];
    _mySquare6 = [[SKSpriteNode alloc]initWithColor:[SKColor brownColor] size:CGSizeMake(30, 30)];
    _mySquare7 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(20, 60)];
    _mySquare8 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(30, 37)];
    _mySquare9 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(20, 60)];
    _mySquare10 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(30, 37)];
    
    [_mySquare1 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.0)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.5)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.0, self.size.height/2.5)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/1.0, self.size.height/3.0)];
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.7, self.size.height/2.5)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.7, self.size.height/3.0)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3.5)];
    [_mySquare8 setPosition:CGPointMake(self.size.width/1.5, self.size.height/4.0)];
    [_mySquare9 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3.5)];
    [_mySquare10 setPosition:CGPointMake(self.size.width/1.5, self.size.height/4.0)];
    
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare9.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare10.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    
    
    [_mySquare1.physicsBody setRestitution:1.0];
    [_mySquare2.physicsBody setRestitution:1.0];
    [_mySquare3.physicsBody setRestitution:1.0];
    [_mySquare4.physicsBody setRestitution:1.0];
    [_mySquare5.physicsBody setRestitution:1.0];
    [_mySquare6.physicsBody setRestitution:1.0];
    [_mySquare7.physicsBody setRestitution:1.0];
    [_mySquare8.physicsBody setRestitution:1.0];
    [_mySquare9.physicsBody setRestitution:1.0];
    [_mySquare10.physicsBody setRestitution:1.0];
    
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    [self addChild:_mySquare9];
    [self addChild:_mySquare10];
    
    
}


-(void)makeShelf{
    _myShelf1 = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(100, 40)];
    _myShelf1.position = CGPointMake(self.size.width/2.4, self.size.height/2);
    _myShelf1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf1.size];
    [_myShelf1.physicsBody setDynamic:NO];
    
    [self addChild:_myShelf1];
    _myShelf2 = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(100, 40)];
    _myShelf2.position = CGPointMake(self.size.width/4.5, self.size.height/2.5);
    _myShelf2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf2.size];
    [_myShelf2.physicsBody setDynamic:NO];
    
    [self addChild:_myShelf2];
    
}


-(void) activateJoint{
    
    _myJoint1 = [SKPhysicsJointLimit jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
    
    [self.physicsWorld addJoint:_myJoint1];
    
    _myJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchorA:_mySquare2.position anchorB:_mySquare3.position];
    
    [self.physicsWorld addJoint:_myJoint2];
    
    
    _myJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare5.physicsBody anchorA:_mySquare2.position anchorB:_mySquare5.position];
    
    [self.physicsWorld addJoint:_myJoint3];
    
    _myJoint4 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchorA:_mySquare3.position anchorB:_mySquare4.position];
    
    [self.physicsWorld addJoint:_myJoint4];
    
    _myJoint5 = [SKPhysicsJointLimit jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchorA:_mySquare5.position anchorB:_mySquare6.position];
    
    [self.physicsWorld addJoint:_myJoint5];
    
    _myJoint6 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare7.physicsBody anchorA:_mySquare2.position anchorB:_mySquare7.position];
    
    [self.physicsWorld addJoint:_myJoint6];
    
    _myJoint7 = [SKPhysicsJointLimit jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchorA:_mySquare7.position anchorB:_mySquare8.position];
    
    [self.physicsWorld addJoint:_myJoint7];
    
    _myJoint8 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare9.physicsBody anchorA:_mySquare2.position anchorB:_mySquare9.position];
    
    [self.physicsWorld addJoint:_myJoint8];
    
    _myJoint9 = [SKPhysicsJointLimit jointWithBodyA:_mySquare9.physicsBody bodyB:_mySquare10.physicsBody anchorA:_mySquare9.position anchorB:_mySquare10.position];
    
    [self.physicsWorld addJoint:_myJoint9];
    
    
    
}


-(void) spawnBackgroundWorld{
    NSLog(@"spawnBackgroundWorld");
    self.scaleMode =SKSceneScaleModeAspectFit; //bounding box for world
    self.physicsBody= [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame]; //size of physics body
    [self.physicsBody setRestitution:1.0]; //bouncy
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        
        [self activateJoint];
        [self makeShelf];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    if (_mySquare1.physicsBody.dynamic) {
        
        [_mySquare1.physicsBody setDynamic:NO];
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
        
        // [_mySquare1.physicsBody setDynamic:NO];
        //  [_mySquare2.physicsBody setDynamic:NO];
        
    }
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
