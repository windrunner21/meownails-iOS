//
//  BookingView.swift
//  MeowNails
//
//  Created by Imran on 23.11.21.
//

import SwiftUI

struct BookingView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Catalog Controller UI
                HStack {
                    Text("Catalog")
                        .foregroundColor(Color.gray)
                        .fontWeight(.light)
                        .textCase(.uppercase)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("All")
                    }
                }
                .padding()
                
                // List of Procedures UI
                List {
                    HStack {
                        Text("Manicure")
                    }
                    Text("Shellac")
                    Text("Gellac")
                    Text("Build up")
                    Text("Paraffin")
                    Text("Design")
                }
                
                // Booking Details Controller UI
                HStack {
                    Text("Booking Details")
                        .foregroundColor(Color.gray)
                        .foregroundColor(Color.gray)
                        .fontWeight(.light)
                        .textCase(.uppercase)
                    Spacer()
                }
                .padding()
                
                // Custom Date Picker UI
                DatePickerView()
                
                // Custom Time Picker UI
                TimePickerView()
                
                
                Spacer()
            }
            .navigationTitle("Booking")
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
