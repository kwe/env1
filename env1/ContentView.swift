//
//  ContentView.swift
//  env1
//
//  Created by Kevin Evans on 22/05/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var widgets: WidgetViewModel
    @State private var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Message: \(widgets.message)")
                    .padding()
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Text("Edit text")
                })
                .sheet(isPresented: $showSheet){
                    EditView()
                }
            }
            .navigationTitle(Text("Widgets"))

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(WidgetViewModel())
    }
}
