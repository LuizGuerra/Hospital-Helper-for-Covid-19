//
//  TopBar.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/13/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct TopBar: View {
    @State var searchText: String = ""
    
    var body: some View {
        HStack(spacing: 24) {
            SearchBarView(searchText: $searchText)
                .frame(height: 64)
                .padding(.leading, 0)
            
            
            VStack(alignment: .trailing, spacing: 4) {
                Text("Ronald Maciel")
                Text("Enfermeiro")
                    .font(.subheadline)
            }
            
            Image("logo").resizable().frame(width: 54, height: 54)
            
            Button(action: {
                
            }) {
                Image("dropdown")
                    .renderingMode(.original)
                    .frame(width: 40, height: 40)
            }
            
            Spacer().frame(width: 1, height: 64)
                .background(Color(UIColor.lightGray))
            
            
            Button(action: {
                
            }) {
                Image(systemName: "bell")
                    .renderingMode(.original)
                    .frame(width: 40, height: 40)
            }
            
            Button(action: {
                
            }) {
                Image("logout")
                    .renderingMode(.original)
                    .frame(width: 40, height: 40)
            }
            
            
        }
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
