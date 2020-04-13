//
//  SearchBar.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/13/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI


struct SearchBarView: View {
    
    @Binding var searchText: String
    @State private var showCancelButton: Bool = false
    
    var onCommit: () -> Void = {print("onCommit")}
    
    var body: some View {
        HStack{
            HStack {
                // Search Bar
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(.lightGray))
                
                // Search text field
                ZStack (alignment: .leading) {
                    if searchText.isEmpty { // Separate text for placeholder to give it the proper color
                        Text("Search")
                            .foregroundColor(Color(.lightGray))
                            
                    }
                    
                    TextField("", text: $searchText, onEditingChanged: { isEditing in
                        self.showCancelButton = true
                    }, onCommit: onCommit)
                    
                }
                
                
                
                // Clear button
                Button(action: {
                    self.searchText = ""
                }) {
                    Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                }
            }
            .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
                .foregroundColor(.secondary) // For magnifying glass and placeholder test
                .background(Color.white)
                .cornerRadius(10.0)
            
            
            if showCancelButton  {
                // Cancel button
                Button("Cancel") {
                    UIApplication.shared.endEditing(true) // this must be placed before the other commands here
                    self.searchText = ""
                    self.showCancelButton = false
                }
                .foregroundColor(Color(.systemBlue))
            }
        }
        .padding(.horizontal)
        .navigationBarHidden(showCancelButton)
    }
}

extension UIApplication {
    func endEditing(_ force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}

struct ResignKeyboardOnDragGesture: ViewModifier {
    var gesture = DragGesture().onChanged{_ in
        UIApplication.shared.endEditing(true)
    }
    func body(content: Content) -> some View {
        content.gesture(gesture)
    }
}

extension View {
    func resignKeyboardOnDragGesture() -> some View {
        modifier(ResignKeyboardOnDragGesture())
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
