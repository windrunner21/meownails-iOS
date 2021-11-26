//
//  BookingView.swift
//  MeowNails
//
//  Created by Imran on 23.11.21.
//

import SwiftUI

struct BookingView: View {
    @State private var date = Date()
    @State private var showContactInfoModal: Bool = false
    @State private var showCatalogHelpModal: Bool = false
    @EnvironmentObject var manager: BookingManager
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Catalog Controller UI
                    HStack {
                        Text("Catalog")
                            .foregroundColor(.gray)
                            .fontWeight(.light)
                            .textCase(.uppercase)
                        Spacer()
                        Button(action: {
                            showCatalogHelpModal = true
                        }) {
                            Text("Need help?")
                        }
                    }
                    .padding()
                                    
                    // List of Procedures SubView UI
                    ProceduresListView()
                  
                    // Booking Details Controller UI
                    HStack {
                        Text("Booking Details")
                            .foregroundColor(Color.gray)
                            .foregroundColor(Color.gray)
                            .fontWeight(.light)
                            .textCase(.uppercase)
                        Spacer()
                    }
                    .padding([.top, .horizontal])
                    
                    // Date and Time Picker UI
                    DatePicker(
                        selection: $date,
                        in: Date()...,
                        displayedComponents: [.date],
                        label: {
                            Text("Select Date")
                                .font(.system(size: 20, weight: .bold))
                        })
                        .id(date)
                        .onChange(of: date, perform: { value in
                            manager.setDateBooked(date)
                        })
                        .padding()
                    
                    TimePickerView()
                        .padding([.horizontal, .bottom])
                    
                    if manager.isAvailableToBook != .unknown {
                        HStack {
                            Spacer()
                            if manager.isAvailableToBook == .available {
                                Text("Time slot is available")
                                Image(systemName: "checkmark.diamond.fill")
                                .foregroundColor(.green)
                            }
                            if manager.isAvailableToBook == .unavailable {
                                Text("Time slot is unavailable")
                                Image(systemName: "xmark.diamond.fill")
                                .foregroundColor(.red)
                            }
                        }
                        .padding([.bottom, .horizontal])
                    }

                  
                    // Continue to Modal View
                    Button(action: {
                        showContactInfoModal = true
                        }) {
                        Text("Continue")
                            .font(.system(size: 20, weight: .semibold))
                            .frame(maxWidth: .infinity)
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(manager.phaseI_disabled ? .gray.opacity(0.5) : .blue)
                    .cornerRadius(10)
                    .padding()
                    .disabled(manager.phaseI_disabled)

                    Spacer()
                }
                .sheet(isPresented: $showCatalogHelpModal, onDismiss: {print("closed catalog help")}, content: {
                    CatalogInformationView(isPresented: $showCatalogHelpModal)
                })
                .sheet(isPresented: $showContactInfoModal, onDismiss: {print("closed contact info")}, content: {
                    ContactInformationView(manager: manager, isPresented: $showContactInfoModal)
                })
            }
            .navigationTitle("Booking")
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
            .environmentObject(BookingManager())
    }
}
