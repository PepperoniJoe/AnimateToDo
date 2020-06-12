//
//  Data.swift
//  AnimateToDo
//
//  Created by Marcy Vernon on 5/29/20.
//  Copyright © 2020 Marcy Vernon. All rights reserved.
//

import UIKit

struct Data {
    
    static func updateCell(_ cell: UITableViewCell) -> UITableViewCell {
        cell.textLabel?.textColor = UIColor(named: "BackgroundColor")?.withAlphaComponent(0.75)
        cell.textLabel?.font = UIFont(name: "AmericanTypewriter", size: 22)
        cell.selectionStyle  = UITableViewCell.SelectionStyle.none
        return cell
    }
    
    static let rowHeight    : CGFloat = 60
    static let cornerRadius : CGFloat = 30
    static let textColor    : UIColor = .systemBackground
    static let darkAlpha    : CGFloat = 0.70
    static let lightAlpha   : CGFloat = 0.85
    
    static let list: [(name: String, detail: [String])] = [
        ("Stranger Things", strangerThings),
        ("Star Trek", starTrek),
        ("Russian Doll", russianDoll),
        ("Black Mirror", blackMirror),
        ("Outlanders", outlanders),
        ("While You Were Sleeping", whileYouWereSleeping),
        ("Sixth Sense", sixthSense),
    ]
    
    static let strangerThings: [String] = [
        "Hangout with friends",
        "String Christmas lights",
        "Buy Eggos",
        "Play Dragon's Lair",
        "Kill the Demogorgon",
        "Ride a bike",
        "Eat ice cream cones",
        "Write a note",
        "Chew gum",
        "Dance",
        "Draw odd pictures",
        "Keep an ominous pet",
        "Skateboard to school",
        "Laugh with a friend",
        "Look for Will",
    ]
    
    static let starTrek: [String] = [
        "Play Fizzbin",
        "Drink a Mint Julep",
        "Fight the gorn",
        "Watch out for Don Juan",
        "Practice the Vulcan lute",
        "Avoid Salt Monsters",
        "Play 3D Chess",
        "Buy a tribble",
        "Wear any shirt but red",
        "Request shore leave",
        "Practice Klingon language",
        "Say 'He's dead Jim'",
        "Travel at warp speed",
        "Turn phasers to stun",
        "Sing in the crew lounge",
    ]
    
    static let russianDoll: [String] = [
        "Chop up watermelons",
        "Kiss a Krugerrand",
        "Read Emily of New Moon",
        "Feed a Beta fish",
        "Say Jodorowsky's Dune",
        "Download Yelp",
        "Attend a birthday party",
        "Hunt for a cat",
        "Get a hair cut",
        "Cut a rotten orange",
        "Call the gas company",
        "Say a prayer",
        "Break a mirror",
        "Cook a chicken",
        "Wear a scarf",
        "Walk in a parade",
        "Buy a wedding ring",
        "Take the fire escape",
    ]
    
    static let blackMirror: [String] = [
        "Chop up watermelons",
        "Kiss a Krugerrand",
        "Read Emily of New Moon",
        "Feed a Beta fish",
        "Say Jodorowsky's Dune",
        "Download Yelp",
        "Attend a birthday party",
        "Hunt for a cat",
        "Get a hair cut",
        "Cut a rotten orange",
        "Call the gas company",
        "Say a prayer",
        "Break a mirror",
        "Cook a chicken",
        "Wear a scarf",
        "Walk in a parade",
        "Buy a wedding ring",
        "Take the fire escape",
    ]
    
    static let outlanders: [String] = [
        "Chop up watermelons",
        "Kiss a Krugerrand",
        "Read Emily of New Moon",
        "Feed a Beta fish",
        "Say Jodorowsky's Dune",
        "Download Yelp",
        "Attend a birthday party",
        "Hunt for a cat",
        "Get a hair cut",
        "Cut a rotten orange",
        "Call the gas company",
        "Say a prayer",
        "Break a mirror",
        "Cook a chicken",
        "Wear a scarf",
        "Walk in a parade",
        "Buy a wedding ring",
        "Take the fire escape",
    ]
    
    static let whileYouWereSleeping: [String] = [
        "Say 'Hello' to attractive guy",
        "Rescue mugging victim",
        "Move a couch",
        "Feed cats",
        "Avoid Joe Jr.",
        "Order hotdog without relish",
        "Drop a Christmas tree",
        "Hide a man in a closet",
        "Plan an Italian vacation",
        "Work on Christmas Day",
        "Get engaged to a man in a coma",
        "Eat Peanut Brittle ice cream",
        "Straighten up the den",
        "Fall off a bike",
        "Play cards with man in coma",
        "Avoid eggnog",
    ]
    
    static let sixthSense: [String] = [
        "Hangout with friends",
        "String Christmas lights",
        "Buy Eggos",
        "Play Dragon's Lair",
        "Kill the Demogorgon",
        "Ride a bike",
        "Eat ice cream cones",
        "Write a note",
        "Chew gum",
        "Dance",
        "Draw odd pictures",
        "Keep an ominous pet",
        "Skateboard to school",
        "Laugh with a friend",
        "Look for Will",
    ]
}
