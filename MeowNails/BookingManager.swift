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
    
    // published procedure properties
    @Published var mainProcedure: String?
    @Published var additionalProcedure: String?
    
    // published booking properties
    @Published var time: String?
    @Published var isAvailableToBook: Availability
    
    // published user properties
    @Published var fullName: String
    @Published var phoneNumber: String
    
    // booking properties
    var date: Date?
    
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
    
    // disable continue button to move to contact information activity
    var phaseI_disabled: Bool {
        if mainProcedure == nil && additionalProcedure == nil || time == nil || isAvailableToBook != .available {
            return true
        }
        
        return false
    }
    
    // disable complete button to leave booking request to database
    var phaseII_disabled: Bool {
        if fullName == String() || phoneNumber.count < 13 {
            return true
        }
        
        return false
    }
    
    init() {
        isAvailableToBook = .unknown
        phoneNumber = "+994"
        fullName = String()
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
    func setDateBooked(_ dateEntered: Date?) {
        self.date = dateEntered
    }
    
    // gettting date booked by user in local time zone format
    func getDateBooked() -> String {
        let localDateFormatter = DateFormatter()
        localDateFormatter.dateStyle = .medium
        let byLocalTimeZone = localDateFormatter.string(from: self.date ?? Date())
        
        return byLocalTimeZone
    }
    
    // setting time booked by user
    func setTimeBooked(_ timeEntered: String?) {
        self.time = timeEntered
    }
    
    // setting main procedure
    func setMainProcedure(_ mainEntered: String?) {
        self.mainProcedure = mainEntered
    }
    
    // setting additional procedure
    func setAdditionalProcedure(_ additionalEntered: String?) {
        self.additionalProcedure = additionalEntered
    }
    
    func setBookingAvailability(_ availability: Availability) {
        self.isAvailableToBook = availability
    }
    
    func reInitialize() {
        self.mainProcedure = nil
        self.additionalProcedure = nil
        self.time = nil
        self.date = nil
        self.isAvailableToBook = .unknown
        self.fullName = String()
        self.phoneNumber = "+994"
    }
}
