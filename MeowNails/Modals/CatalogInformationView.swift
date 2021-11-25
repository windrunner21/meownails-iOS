//
//  CatalogInformationView.swift
//  MeowNails
//
//  Created by Imran on 23.11.21.
//

import SwiftUI

struct CatalogInformationView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    // Manicure Section
                    Section(header: Text("Manicure")) {
                        VStack(alignment: .leading) {
                            ScrollView(.horizontal) {
                                HStack {
                                    Image("Manicure")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-1")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-2")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                }
                                .cornerRadius(10)
                            }
                            Text("main procedure")
                                .textCase(.uppercase)
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                                .padding(8)
                                .background(Color("ManicureColor"))
                                .cornerRadius(25)
                                .padding([.vertical], 6)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                .foregroundColor(.gray)
                                .padding([.bottom])
                            Divider()
                            // Duration UI
                            HStack {
                                Text("Duration")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("45 min.")
                                    .font(.system(size: 18, weight: .bold))
                            }
                            Divider()
                            // Price UI
                            HStack {
                                Text("Price")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("5 ₼")
                                    .font(.system(size: 24, weight: .bold))
                            }
                        }
                    }
                    
                    Section(header: Text("Shellac")) {
                        VStack(alignment: .leading) {
                            ScrollView(.horizontal) {
                                HStack {
                                    Image("Manicure")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-1")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-2")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                }
                                .cornerRadius(10)
                            }
                            Text("main procedure")
                                .textCase(.uppercase)
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                                .padding(8)
                                .background(Color("ShellacColor"))
                                .cornerRadius(25)
                                .padding([.vertical], 6)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                .foregroundColor(.gray)
                                .padding([.bottom])
                            Divider()
                            // Duration UI
                            HStack {
                                Text("Duration")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("1 hour")
                                    .font(.system(size: 18, weight: .bold))
                            }
                            Divider()
                            // Price UI
                            HStack {
                                Text("Price")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("15 ₼")
                                    .font(.system(size: 24, weight: .bold))
                            }
                        }
                    }
                    
                    Section(header: Text("Gellac")) {
                        VStack(alignment: .leading) {
                            ScrollView(.horizontal) {
                                HStack {
                                    Image("Manicure")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-1")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-2")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                }
                                .cornerRadius(10)
                            }
                            Text("main procedure")
                                .textCase(.uppercase)
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                                .padding(8)
                                .background(Color("GellacColor"))
                                .cornerRadius(25)
                                .padding([.vertical], 6)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                .foregroundColor(.gray)
                                .padding([.bottom])
                            Divider()
                            // Duration UI
                            HStack {
                                Text("Duration")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("1 hour 10 min.")
                                    .font(.system(size: 18, weight: .bold))
                            }
                            Divider()
                            // Price UI
                            HStack {
                                Text("Price")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("20 ₼")
                                    .font(.system(size: 24, weight: .bold))
                            }
                        }
                    }
                    
                    Section(header: Text("Build up")) {
                        VStack(alignment: .leading) {
                            ScrollView(.horizontal) {
                                HStack {
                                    Image("Manicure")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-1")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-2")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                }
                                .cornerRadius(10)
                            }
                            Text("main procedure")
                                .textCase(.uppercase)
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                                .padding(8)
                                .background(Color("BuildUpColor"))
                                .cornerRadius(25)
                                .padding([.vertical], 6)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                .foregroundColor(.gray)
                                .padding([.bottom])
                            Divider()
                            // Duration UI
                            HStack {
                                Text("Duration")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("2 hours")
                                    .font(.system(size: 18, weight: .bold))
                            }
                            Divider()
                            // Price UI
                            HStack {
                                Text("Price")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("25 ₼")
                                    .font(.system(size: 24, weight: .bold))
                            }
                        }
                    }
                    
                    Section(header: Text("Paraffin")) {
                        VStack(alignment: .leading) {
                            ScrollView(.horizontal) {
                                HStack {
                                    Image("Manicure")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-1")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-2")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                }
                                .cornerRadius(10)
                            }
                            Text("additional procedure")
                                .textCase(.uppercase)
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                                .padding(8)
                                .background(Color("ParaffinColor"))
                                .cornerRadius(25)
                                .padding([.vertical], 6)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                .foregroundColor(.gray)
                                .padding([.bottom])
                            Divider()
                            // Duration UI
                            HStack {
                                Text("Duration")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("40 min.")
                                    .font(.system(size: 18, weight: .bold))
                            }
                            Divider()
                            // Price UI
                            HStack {
                                Text("Price")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("10 ₼")
                                    .font(.system(size: 24, weight: .bold))
                            }
                        }
                    }
                    
                    Section(header: Text("Design")) {
                        VStack(alignment: .leading) {
                            ScrollView(.horizontal) {
                                HStack {
                                    Image("Manicure")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-1")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                    Image("Manicure-2")
                                        .resizable()
                                        .frame(maxWidth: 106, maxHeight: 150)
                                }
                                .cornerRadius(10)
                            }
                            Text("additional procedure")
                                .textCase(.uppercase)
                                .foregroundColor(.white)
                                .font(.system(size: 10))
                                .padding(8)
                                .background(Color("DesignColor"))
                                .cornerRadius(25)
                                .padding([.vertical], 6)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                .foregroundColor(.gray)
                                .padding([.bottom])
                            Divider()
                            // Duration UI
                            HStack {
                                Text("Duration")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("45 min.")
                                    .font(.system(size: 18, weight: .bold))
                            }
                            Divider()
                            // Price UI
                            HStack {
                                Text("Price")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("5 ₼")
                                    .font(.system(size: 24, weight: .bold))
                            }
                        }
                    }
                }
                .listStyle(SidebarListStyle())
            }
            .navigationTitle("Full Catalog")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") {
                        isPresented = false
                    }
                }
            }
        }
    }
}

struct CatalogInformationView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogInformationView(isPresented: .constant(true))
    }
}
