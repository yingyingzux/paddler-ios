//
//  Match.swift
//  Paddler
//
//  Created by Prithvi Prabahar on 10/13/17.
//  Copyright © 2017 Paddler. All rights reserved.
//

import Foundation
import Firebase

class Match: NSObject {
    
    var id: String?
    var createdAt: Date?
    var finishedAt: Date?
    var loserID: String?
    var winnerID: String?
    var requestorID: String?
    var requesteeID: String?
    var requestorScore: Int?
    var requesteeScore: Int?
    
    init(from: DocumentSnapshot) {
        super.init()
        self.id = from.documentID
        let data = from.data()
        if let createdAt = data["created_at"] as? Date {
            self.createdAt = createdAt
        }
        if let finishedAt = data["finished_at"] as? Date {
            self.finishedAt = finishedAt
        }
        if let loserID = data["loser_id"] as? String {
            self.loserID = loserID
        }
        if let winnerID = data["winner_id"] as? String {
            self.winnerID = winnerID
        }
        if let requestorID = data["requestor_id"] as? String {
            self.requestorID = requestorID
        }
        if let requesteeID = data["requestee_id"] as? String {
            self.requesteeID = requesteeID
        }
        if let requestorScore = data["requestor_score"] as? Int {
            self.requestorScore = requestorScore
        }
        if let requesteeScore = data["requestee_score"] as? Int {
            self.requesteeScore = requesteeScore
        }
    }
}
