//
//  EditView.swift
//  env1
//
//  Created by Kevin Evans on 22/05/2021.
//

import SwiftUI

struct EditView: View {
    @EnvironmentObject var widget: WidgetViewModel
    
    var body: some View {
        VStack{
            Text("Edit it")
                .font(.title)
            TextEditor(text: $widget.message)
                .foregroundColor(.secondary)
                .font(.title2)
                .border( Color.secondary.opacity(0.8),width: 1)
                .padding()

            Button(action: {
                widget.fetch()
            }, label: {
                Text("Save")
            })
            
        }
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
            .environmentObject(WidgetViewModel())
    }
}
