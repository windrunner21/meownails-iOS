//
//  TimePickerView.swift
//  MeowNails
//
//  Created by Imran on 25.11.21.
//

import SwiftUI

struct TimePickerView: View {
    @Binding var selection: String?
    @Binding var isAvailable: Availability
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
                            if selection == timeSlot {
                                selection = nil
                                isAvailable = .unknown
                            } else {
                                selection = timeSlot
                                isAvailable = .available
                                
                                if timeSlot == "11:30" {
                                    isAvailable = .unavailable
                                }
                            }
                        }) {
                            if selection == timeSlot {
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
        TimePickerView(selection: .constant(nil), isAvailable: .constant(.unknown))
    }
}
