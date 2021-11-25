//
//  BookingManager.swift
//  MeowNails
//
//  Created by Imran on 25.11.21.
//

import Foundation

class BookingManager: ObservableObject {
    // identifier
    let identifier = UUID()
    
    // published properties
    @Published var mainProcedure: String?
    @Published var additionalProcedure: String?
    
    // user properties
    var fullName: String
    var phoneNumber: String
    
    // booking properties
    var date: String
    var time: String
    
    // computed properties
    var totalPrice: Int {
        var price: Int = 0
        
        switch mainProcedure {
        case "Manicure": price += 5
        case "Shellac": price += 15
        case "Gellac": price += 20
        case "Build up": price += 25
        default: price += 0
        }
        
        switch additionalProcedure {
        case "Paraffin": price += 10
        case "Design": price += 5
        default: price += 0
        }
        
        return price
    }
    
    // initializer
    init() {
        self.fullName = String()
        self.phoneNumber = String()
        self.date = String()
        self.time = String()
    }
    
    // setting user's full name
    func setFullName(_ nameEntered: String) {
        self.fullName = nameEntered
    }
    
    // setting user's phone number
    func setPhoneNumber(_ phoneEntered: String) {
        self.phoneNumber = phoneEntered
    }
    
    // setting date booked by user
    func setDateBooked(_ dateEntered: String) {
        self.date = dateEntered
    }
    
    // setting time booked by user
    func setTimeBooked(_ timeEntered: String) {
        self.time = timeEntered
    }
}
