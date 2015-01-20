//
//  File.swift
//  Mind Meld 3
//
//  Created by Louis Konig on 1/15/15.
//  Copyright (c) 2015 Louis Konig. All rights reserved.
//

import Foundation

import UIKit

class Game: NSObject {
    var name: String
    var game: String
    
    var uidp1Challenged: String
    var uidp2Challenger: String
    var startw1:  String
    var startw2:  String
    var p1w1:  String
    var p2w1:  String
    var p1w2:  String
    var p2w2:  String
    var p1w3:  String
    var p2w3:  String
    var p1w4:  String
    var p2w4:  String
    var p1w5:  String
    var p2w6:  String
    var isMindMeld:  Bool
    var pointsWon:  Int
    var mindMeldRound:  Int
    var isReadyForNext:  Bool
    var lastRoundComplete:  Int
    
    
    

    //var rating: Int
    
    init(name: String, game: String, uidp1Challenged:  String, uidp2Challenger:  String, startw1:  String, startw2:  String, p1w1:  String, p2w1:  String, p1w2:  String, p2w2:  String, p1w3:  String, p2w3:  String, p1w4:  String, p2w4:  String, p1w5:  String, p2w6:  String, isMindMeld:  Bool, pointsWon:  Int, mindMeldRound:  Int, isReadyForNext:  Bool, lastRoundComplete:  Int) {
        self.name = name
        self.game = game
        self.uidp1Challenged = uidp1Challenged
        self.uidp2Challenger = uidp2Challenger
        self.startw1 = startw1
        self.startw2 = startw2
        self.p1w1 = p1w1
        self.p2w1 = p2w1
        self.p1w2 = p1w2
        self.p2w2 = p2w2
        self.p1w3 = p1w3
        self.p2w3 = p2w3
        self.p1w4 = p1w4
        self.p2w4 = p2w4
        self.p1w5 = p1w5
        self.p2w6 = p2w6
        self.isMindMeld = isMindMeld
        self.pointsWon = pointsWon
        self.mindMeldRound = mindMeldRound
        self.isReadyForNext = isReadyForNext
        self.lastRoundComplete = lastRoundComplete
        
        
        
        
        
        //self.rating = rating
        super.init()
    }










}