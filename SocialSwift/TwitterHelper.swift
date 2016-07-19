//
//  TwitterHelper.swift
//  SocialSwift
//
//  Created by Adar Butel on 7/13/16.
//  Copyright © 2016 Adar Butel. All rights reserved.
//

import Foundation
import UIKit

class TwitterHelper {
    
    static func openTimeline() {
        if let timelineURL = NSURL.init(string: "twitter://timeline") {
            URLHelper.openAction(withURL: timelineURL)
        }
    }
    
    static func openMentions() {
        if let mentURL = NSURL.init(string: "twitter://mentions") {
            URLHelper.openAction(withURL: mentURL)
        }
    }
    
    static func openMessages() {
        if let msgURL = NSURL.init(string: "twitter://mentions") {
            URLHelper.openAction(withURL: msgURL)
        }
    }
    
    static func openProfile(ofUsername username: String?, withID id: String?) {
        if username != nil {
            if let profileURL = NSURL.init(string: "twitter://user?screen_name=\(username!)") {
                URLHelper.openAction(withURL: profileURL)
            }
        } else if id != nil && username == nil {
            if let profileURL = NSURL.init(string: "twitter://user?screen_name=\(id!)") {
                URLHelper.openAction(withURL: profileURL)
            }
        }
    }
    
    static func openStatus(withID id: String) {
        if let mediaURL = NSURL.init(string: "twitter://status?id=\(id)") {
            URLHelper.openAction(withURL: mediaURL)
        }
    }
    
    static func openSearch(withQuery query: String) {
        if let searchURL = NSURL.init(string: "search?query=%23\(query)") {
            URLHelper.openAction(withURL: searchURL)
        }
    }
    
    static func post(message msg: String, inReplyToStatus id: String?) {
        // Use %20 for ' '
        if id == nil {
            if let postURL = NSURL.init(string: "post?message=\(msg)") {
                URLHelper.openAction(withURL: postURL)
            }
        } else {
            if let postURL = NSURL.init(string: "post?message=\(msg)&in_reply_to_status_id=\(id)") {
                URLHelper.openAction(withURL: postURL)
            }
        }
    }
}