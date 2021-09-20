//
//  DonateButton.swift
//
//
//  Reworked by florian schweizer on 19.09.21.
//  Taken from reddit user u/dippnerd
//  https://www.reddit.com/r/SwiftUI/comments/fhh1fw/add_to_siri_button_with_swiftui/

import SwiftUI
import Intents

public struct DonateButton: UIViewControllerRepresentable {
    public var intent: INIntent
        
    public func makeUIViewController(context: Context) -> DonateViewController {
        let controller = DonateViewController()
        controller.intent = intent
        return controller
    }
    
    public func updateUIViewController(_ uiViewController: DonateViewController, context: Context) { }
}
