//
//  Acompanhamento.swift
//  CoronaUI
//
//  Created by Ronald Maciel on 15/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct Acompanhamento: View {
    var body: some View {
        HStack {
            ScrollView(.horizontal) {
                VStack(alignment: .leading, spacing: 15){
                    VStack {
                        VStack {
                            Text("HOJE")
                                .frame(width: 163, height: 23)
                                .font(.system(size: 12, weight: .medium, design: .default))
                                .background(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)))
                                .foregroundColor(Color.white)
                            
                            VStack {
                                Text("01")
                                    .font(.system(size: 30, weight: .bold, design: .default))
                                
                                Text("Qua")
                            }.padding(.vertical, 6)
                            
                        }
                        .border(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)), width: 3)
                        .cornerRadius(10)
                    }
                    .frame(width: 163, height: 99)
                    
                    
                    // REPEAT THIS HSTACK |x||x||x||x||x| ...
                    HStack {
                        VStack(alignment: .leading){
                            HStack {
                                Image("thermometer").renderingMode(.original)
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                
                                VStack{
                                    Text("38,2")
                                    Text("º")
                                }.font(.system(size: 20, weight: .bold, design: .default))
                            }
                            
                              
                            
                            VStack(alignment: .leading, spacing: 5){
                                Text("SINTOMAS")
                                    .font(.system(size: 12, weight: .medium, design: .default))
                                    .foregroundColor(Color(UIColor(red: 0.322, green: 0.38, blue: 0.42, alpha: 1)))
                                
                                Text("· Febre")
                                Text("· Tosse")
                                Text("· Dor de garganta")
                            }
                            .font(.system(size: 16))
                            
                        }
                        .frame(width: 163, height: 248)
                        .background(Color(UIColor(red: 0.468, green: 0.459, blue: 0.875, alpha: 0.3)))
                        .cornerRadius(10)
                        
                        
                        Spacer()
                            .frame(width: 1, height: 248)
                            .background(Color(UIColor.lightGray))
                            .padding(.horizontal, 5)
                        
                    }
                }
                
                
            }
            
        }
    }
}

struct Acompanhamento_Previews: PreviewProvider {
    static var previews: some View {
        Acompanhamento()
    }
}
