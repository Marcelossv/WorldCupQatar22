//
//  ViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 08/05/22.
//

import UIKit

class CountDown: UIViewController {
    @IBOutlet var timerLabel: UILabel!
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTime), userInfo: nil, repeats: true) // Repeat "func Update() " every second and update the label
    }
    
    @objc func UpdateTime() {
        let userCalendar = Calendar.current
        // Set Current Date
        let date = Date()
        let components = userCalendar.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date)
        let currentDate = userCalendar.date(from: components)!
        
        // Set Event Date
        var eventDateComponents = DateComponents()
        eventDateComponents.year = 2022
        eventDateComponents.month = 11
        eventDateComponents.day = 21
        eventDateComponents.hour = 05
        eventDateComponents.minute = 00
        eventDateComponents.second = 00
        eventDateComponents.timeZone = TimeZone(abbreviation: "AST")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate = userCalendar.date(from: eventDateComponents)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: eventDate)
        
        // Display Countdown, final sentence i can put "D,h...
        timerLabel.text = "\(timeLeft.day!)       \(timeLeft.hour!)          \(timeLeft.minute!)       \(timeLeft.second!)"
        
        // Show diffrent text when the event has passed
        endEvent(currentdate: currentDate, eventdate: eventDate)
    }
    
    func endEvent(currentdate: Date, eventdate: Date) {
        if currentdate >= eventdate {
            timerLabel.text = "Welcome to World Cup Qatar 2022!"
            // Stop Timer
            timer.invalidate()
        }
    }
}
