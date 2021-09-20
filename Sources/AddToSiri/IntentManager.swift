//
//  IntentManager.swift
//  
//
//  Reworked by florian schweizer on 19.09.21.
//  Taken from reddit user u/dippnerd
//  https://www.reddit.com/r/SwiftUI/comments/fhh1fw/add_to_siri_button_with_swiftui/

import UIKit
import Intents

public final class IntentManager {
    // MARK: Properties
    
    /// A shared shortcut manager.
    public static let shared = IntentManager()
    
    func donate(_ intent: INIntent, id: String? = nil) {
        // create a Siri interaction from our intent
        let interaction = INInteraction(intent: intent, response: nil)
        if let id = id {
            interaction.groupIdentifier = id
        }
        
        // donate it to the system
        interaction.donate { error in
            // if there was an error, print it out
            if let error = error {
                print(error)
            }
        }
        
        if let shortcut = INShortcut(intent: intent) {
            let relevantShortcut = INRelevantShortcut(shortcut: shortcut)
            INRelevantShortcutStore.default.setRelevantShortcuts([relevantShortcut]) { error in
                if let error = error {
                    print("Error setting relevant shortcuts: \(error)")
                }
            }
        }
    }
}
