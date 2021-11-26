//
//  TimePickerView.swift
//  MeowNails
//
//  Created by Imran on 25.11.21.
//

import SwiftUI

struct TimePickerView: View {
    @EnvironmentObject var manager: BookingManager
    
    let timeSlotsProvided: [String] = [
        "10:00",
        "11:30",
        "13:00",
        "15:00",
        "16:30"
    ]
    
    var body: some View {
        VStack {
            // label for time picker UI
            HStack {
                Text("Select Time")
                    .font(.system(size: 20, weight: .bold))
                Spacer()
            }
            
            ScrollView(.horizontal) {
                HStack {
                    // For Each for time slots
                    ForEach(timeSlotsProvided, id: \.self) { timeSlot in
                    
                        // Button genereated
                        Button(action: {
                            // to select and dis-select
                            if manager.time == timeSlot {
                                manager.setTimeBooked(nil)
                                manager.setBookingAvailability(.unknown)
                            } else {
                                manager.setTimeBooked(timeSlot)
                                manager.setBookingAvailability(.available)
                                
                                if manager.time == "11:30" {
                                    manager.setBookingAvailability(.unavailable)
                                }
                            }
                        }) {
                            if manager.time == timeSlot {
                                Text(timeSlot)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(.blue)
                            } else {
                                Text(timeSlot)
                                    .foregroundColor(Color.primary)
                                    .padding()
                                    .background(Color("TimePickerColor"))
                            }
                        }
                        .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct TimePickerView_Previews: PreviewProvider {
    static var previews: some View {
        TimePickerView()
            .environmentObject(BookingManager())
    }
}
