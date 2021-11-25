//
//  ProceduresListView.swift
//  MeowNails
//
//  Created by Imran on 25.11.21.
//

import SwiftUI

struct ProceduresListView: View {
    @Binding var mainSelected: String?
    @Binding var additionalSelected: String?
    
    typealias Procedure = [String: String]
    let mainProcedures: [Procedure] = [
        [
            "name": "Manicure",
            "price": "5 ₼",
            "icon": "m.square.fill",
            "color": "ManicureColor"
        ],
        [
            "name": "Shellac",
            "price": "15 ₼",
            "icon": "s.square.fill",
            "color": "ShellacColor"
        ],
        [
            "name": "Gellac",
            "price": "20 ₼",
            "icon": "g.square.fill",
            "color": "GellacColor"
        ],
        [
            "name": "Build up",
            "price": "25 ₼",
            "icon": "b.square.fill",
            "color": "BuildUpColor"
        ]
    ]
    
    let additionalProcedures: [Procedure] = [
        [
            "name": "Paraffin",
            "price": "10 ₼",
            "icon": "p.square.fill",
            "color": "ParaffinColor"
        ],
        [
            "name": "Design",
            "price": "5 ₼",
            "icon": "d.square.fill",
            "color": "DesignColor"
        ]
    ]
    
    var body: some View {
        VStack {
            // Main Section
            Section(header: HStack {
                Text("Main Procedures")
                    .textCase(.uppercase)
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                    .padding([.top, .leading])
                Spacer()
            }) {
                // For Each for main procedures
                ForEach(mainProcedures, id: \.self) { procedure in
                    
                    // Button genereated
                    Button(action: {
                        // to select and dis-select
                        if mainSelected == procedure["name"] {
                            mainSelected = nil
                        } else {
                            mainSelected = procedure["name"]
                        }
                    }) {
                        if mainSelected == procedure["name"]  {
                            HStack {
                                Image(systemName: "checkmark.square.fill")
                                    .font(.system(size: 30))
                                    .foregroundColor(.green)
                                Text(procedure["name"]!)
                                Spacer()
                                Text(procedure["price"]!)
                                    .fontWeight(.bold)
                                    .padding([.trailing])
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(.green.opacity(0.5))
                            .cornerRadius(10)
                        } else {
                            HStack {
                                Image(systemName: procedure["icon"]!)
                                    .font(.system(size: 30))
                                    .foregroundColor(Color(procedure["color"]!))
                                Text(procedure["name"]!)
                                Spacer()
                                Text(procedure["price"]!)
                                    .fontWeight(.bold)
                                    .padding([.trailing])
                            }
                            .padding()
                            .foregroundColor(Color.primary)
                            .background(Color("ProcedureTileBackgroundColor"))
                            .cornerRadius(10)
                        }
                    }

                }
            }
            
            // Additionals Section
            Section(header: HStack {
                Text("Additionals")
                    .textCase(.uppercase)
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                    .padding([.top, .leading])
                Spacer()
            }) {
                // For Each for additional procedures
                ForEach(additionalProcedures, id: \.self) { procedure in
                    
                    // Button genereated
                    Button(action: {
                        // to select and dis-select
                        if additionalSelected == procedure["name"] {
                            additionalSelected = nil
                        } else {
                            additionalSelected = procedure["name"]
                        }
                    }) {
                        if additionalSelected == procedure["name"] {
                            HStack {
                                Image(systemName: "checkmark.square.fill")
                                    .font(.system(size: 30))
                                    .foregroundColor(.green)
                                Text(procedure["name"]!)
                                Spacer()
                                Text(procedure["price"]!)
                                    .fontWeight(.bold)
                                    .padding([.trailing])
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(.green.opacity(0.5))
                            .cornerRadius(10)
                        } else {
                            HStack {
                                Image(systemName: procedure["icon"]!)
                                    .font(.system(size: 30))
                                    .foregroundColor(Color(procedure["color"]!))
                                Text(procedure["name"]!)
                                Spacer()
                                Text(procedure["price"]!)
                                    .fontWeight(.bold)
                                    .padding([.trailing])
                            }
                            .padding()
                            .foregroundColor(Color.primary)
                            .background(Color("ProcedureTileBackgroundColor"))
                            .cornerRadius(10)
                        }
                    }
                }
            }
        }
        .padding()
        .background(Color("ProcedureBackgroundColor"))
    }
}

struct ProceduresListView_Previews: PreviewProvider {
    static var previews: some View {
        ProceduresListView(mainSelected: .constant(nil), additionalSelected: .constant(nil))
    }
}
