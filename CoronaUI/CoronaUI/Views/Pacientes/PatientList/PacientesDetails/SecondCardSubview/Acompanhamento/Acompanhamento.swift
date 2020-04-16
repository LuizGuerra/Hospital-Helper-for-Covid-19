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
                HStack {
                    VStack{
                        VStack {
                            VStack {
                                Text("HOJE")
                                    .frame(width: 163, height: 25)
                                    .font(.system(size: 12, weight: .medium, design: .default))
                                    .background(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)))
                                    .foregroundColor(Color.white)
                                
                                VStack {
                                    Text("01")
                                        .font(.system(size: 30, weight: .bold, design: .default))
                                    
                                    Text("Qua")
                                }.padding(.vertical, 6)
                                
                            }
                            .frame(width: 163, height: 99)
                            .border(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)), width: 3)
                            .cornerRadius(10)
                        }
                        
                        
                        // REPEAT THIS HSTACK: |x||x||x||x||x| ... 
                        HStack {
                            VStack {
                                Text("38,2")
                                Text("Sintomas")
                                Text("·Febre")
                                Text("·Tosse")
                                Text("·Dor de garganta")
                                
                            }
                            .frame(width: 163, height: 248)
                            
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
}

struct Acompanhamento_Previews: PreviewProvider {
    static var previews: some View {
        Acompanhamento()
    }
}
