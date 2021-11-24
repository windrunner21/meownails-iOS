//
//  BookingView.swift
//  MeowNails
//
//  Created by Imran on 23.11.21.
//

import SwiftUI

struct BookingView: View {
    let localDateFormatter = DateFormatter()
    @State private var date = Date()
    @State private var showContactInfoModal: Bool = false
    @State private var showCatalogHelpModal: Bool = false
    @State private var isAvailableToBook: Availability = .unknown
    @State private var isManicureSelected: Bool = false
    @State private var isShellacSelected: Bool = false
    @State private var isGellacSelected: Bool = false
    @State private var isBuildUpSelected: Bool = false
    @State private var isParaffinSelected: Bool = false
    @State private var isDesignSelected: Bool = false
    
    
    var body: some View {
        NavigationView {
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
                
                // List of Procedures UI
                List {
                    // Main Section
                    Section {
                        Button(action: {
                            isManicureSelected = !isManicureSelected
                        }) {
                            HStack {
                                if isManicureSelected {
                                    Image(systemName: "checkmark.square.fill")
                                        .font(.system(size: 40))
                                        .foregroundColor(.green)
                                } else {
                                    Image(systemName: "m.square.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(.cyan)
                                }
                                Text("Manicure")
                                Spacer()
                                Text("5 ₼")
                                    .fontWeight(.bold)
                                    .padding([.trailing])
                            }
                            .foregroundColor(Color.primary)
                        }
                        
                        Button(action: {
                            isShellacSelected = !isShellacSelected
                        }) {
                            HStack {
                                if isShellacSelected {
                                    Image(systemName: "checkmark.square.fill")
                                        .font(.system(size: 40))
                                        .foregroundColor(.green)
                                } else {
                                    Image(systemName: "s.square.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(Color.teal)
                                }
                                Text("Shellac")
                                Spacer()
                                Text("15 ₼")
                                    .fontWeight(.bold)
                                    .padding([.trailing])
                            }
                            .foregroundColor(Color.primary)
                        }
                        
                        Button(action: {
                            isGellacSelected = !isGellacSelected
                        }) {
                            HStack {
                                if isGellacSelected {
                                    Image(systemName: "checkmark.square.fill")
                                        .font(.system(size: 40))
                                        .foregroundColor(.green)
                                } else {
                                    Image(systemName: "g.square.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(.mint)
                                }
                                Text("Gellac")
                                Spacer()
                                Text("20 ₼")
                                    .fontWeight(.bold)
                                    .padding([.trailing])
                            }
                            .foregroundColor(Color.primary)
                        }
                        
                        Button(action: {
                            isBuildUpSelected = !isBuildUpSelected
                        }) {
                            HStack {
                                if isBuildUpSelected {
                                    Image(systemName: "checkmark.square.fill")
                                        .font(.system(size: 40))
                                        .foregroundColor(.green)
                                } else {
                                    Image(systemName: "b.square.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(.brown)
                                }
                                Text("Build up")
                                Spacer()
                                Text("25 ₼")
                                    .fontWeight(.bold)
                                    .padding([.trailing])
                            }
                            .foregroundColor(Color.primary)
                        }
                        
                        Button(action: {
                            isParaffinSelected = !isParaffinSelected
                        }) {
                            HStack {
                                if isParaffinSelected {
                                    Image(systemName: "checkmark.square.fill")
                                        .font(.system(size: 40))
                                        .foregroundColor(.green)
                                } else {
                                    Image(systemName: "p.square.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(.orange)
                                }
                                Text("Paraffin")
                                Spacer()
                                Text("10 ₼")
                                    .fontWeight(.bold)
                                    .padding([.trailing])
                            }
                            .foregroundColor(Color.primary)
                        }
                    }
                    
                    // Additionals Section
                    Section {
                        Button(action: {
                            isDesignSelected = !isDesignSelected
                        }) {
                            HStack {
                                if isDesignSelected {
                                    Image(systemName: "checkmark.square.fill")
                                        .font(.system(size: 40))
                                        .foregroundColor(.green)
                                } else {
                                    Image(systemName: "d.square.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(.red)
                                }
                                Text("Design")
                                Spacer()
                                Text("5 ₼")
                                    .fontWeight(.bold)
                                    .padding([.trailing])
                            }
                            .foregroundColor(Color.primary)
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
                
                
                // Booking Details Controller UI
                HStack {
                    Text("Booking Details")
                        .foregroundColor(Color.gray)
                        .foregroundColor(Color.gray)
                        .fontWeight(.light)
                        .textCase(.uppercase)
                    Spacer()
                }
                .padding([.trailing, .leading, .top])
                
                // Date and Time Picker UI
                DatePicker(
                    selection: $date,
                    in: Date()...,
                    label: {
                        Text("Date & Time")
                            .font(.system(size: 20, weight: .bold))
                    })
                    .id(date)
                    .onChange(of: date, perform: { value in
                        localDateFormatter.dateStyle = .medium
                        localDateFormatter.timeStyle = .short
                        let byLocalTimeZone = localDateFormatter.string(from: value)
                        
                        print(byLocalTimeZone)
                        isAvailableToBook = .available
                        
                        if byLocalTimeZone == "27 Nov 2021 at 00:00" {
                            isAvailableToBook = .unavailable
                        }
                    })
                    .padding()
                
                if isAvailableToBook != .unknown {
                    HStack {
                        Spacer()
                        if isAvailableToBook == .available {
                            Text("Time slot is available")
                            Image(systemName: "checkmark.diamond.fill")
                            .foregroundColor(.green)
                        }
                        if isAvailableToBook == .unavailable {
                            Text("Time slot is unavailable")
                            Image(systemName: "xmark.diamond.fill")
                            .foregroundColor(.red)
                        }
                    }
                    .padding([.leading, .trailing])
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
                .background(Color.blue)
                .cornerRadius(10)
                .padding()

                Spacer()
            }
            .sheet(isPresented: $showCatalogHelpModal, onDismiss: {print("closed catalog help")}, content: {
                CatalogInformationView(isPresented: $showCatalogHelpModal)
            })
            .sheet(isPresented: $showContactInfoModal, onDismiss: {print("closed contact info")}, content: {
                ContactInformationView(isPresented: $showContactInfoModal)
            })
            .navigationTitle("Booking")
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
