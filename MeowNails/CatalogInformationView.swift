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
                Text("In Progress")
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
