//
//  ContactInformationView.swift
//  MeowNails
//
//  Created by Imran on 23.11.21.
//

import SwiftUI

struct ContactInformationView: View {
    @Binding var isPresented: Bool
    @State private var phoneNumber: String = "+994"
    @State private var fullName: String = String()
    @State private var bookingCompleted: Bool = false
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    // Contact Information Prompt
                    HStack {
                        Text("Enter your contact information")
                            .foregroundColor(.gray)
                            .fontWeight(.light)
                        .textCase(.uppercase)
                        
                        Spacer()
                    }
                    
                    // Phone Number and Full Name TextFields
                    TextField("Phone Number", text: $phoneNumber)
                        .keyboardType(.phonePad)
                        .font(Font.headline.weight(.bold))
                        .padding([.top])
                    Divider()
                        .padding([.bottom])
                    TextField("Full Name", text: $fullName)
                        .textInputAutocapitalization(.words)
                        .font(Font.headline.weight(.regular))
                    Divider()
                    
                    // Review Order Prompt
                    HStack {
                        Text("Review your order")
                            .foregroundColor(.gray)
                            .fontWeight(.light)
                        .textCase(.uppercase)
                        
                        Spacer()
                    }
                    .padding([.top], 30)
                    
                    // Ordered and Price UI
                    VStack {
                        HStack(alignment: .bottom) {
                            Text("You ordered:")
                                .font(.system(size: 20, weight: .semibold))
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Manicure")
                                Text("Design")
                            }
                            .font(.system(size: 20, weight: .regular))
                        }
                        .padding([.top])
                        Divider()
                        HStack(alignment: .bottom) {
                            Text("Total Price:")
                                .font(.system(size: 20, weight: .semibold))
                            Spacer()
                            Text("30 ₼")
                                .font(.system(size: 30, weight: .bold))
                        }
                    }
                    
                    // Complete Booking Button
                    Button(action: {
                        // animation for transition
                        withAnimation(.easeInOut) {
                            bookingCompleted = true
                        }
                        
                        // close activity after 2 seconds
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            isPresented = false
                        }
                        
                    }) {
                        Text("Confirm Booking")
                            .font(.system(size: 20, weight: .semibold))
                            .frame(maxWidth: .infinity)
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding([.top])
                    
                    Spacer()
                }
                .padding()
                .navigationTitle("Review & Book")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            isPresented = false
                        }
                    }
                }
                
            }
            .blur(radius: bookingCompleted ? 2 : 0)
            .animation(.linear, value: bookingCompleted)
            .disabled(bookingCompleted)
            .zIndex(1)
            
            if bookingCompleted {
                VStack {
                    Image(systemName: "checkmark")
                        .foregroundColor(.blue)
                        .font(.system(size: 80))
                        .padding()
                    Text("Booking successful")
                }
                .zIndex(2)
                .transition(.scale)
                .padding(40)
                .background(.ultraThinMaterial)
                .cornerRadius(10)
                .padding()
                .shadow(radius: 10)
            }
        }
    }
}

struct ContactInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformationView(isPresented: .constant(true))
    }
}
