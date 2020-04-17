//
//  Acompanhamento.swift
//  CoronaUI
//
//  Created by Ronald Maciel on 15/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct Calendario {
    let date = Date()
    let dateFormatter = DateFormatter()
    let today : Int
    
    init() {
        dateFormatter.dateFormat = "dd"
        today = Int(dateFormatter.string(from: date)) ?? 0
    }
}

struct Acompanhamento: View {
    //    var daysMonth = [01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
    
    // da pra fazer assim tb, ronald :)
    var daysMonth = 1...31
    
    var daysWeek = ["Dom","Seg","Ter","Qua","Qui","Sex","Sab"]
    
    /// test current date
    var calendario = Calendario()
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                
                ForEach(daysMonth, id:\.self) { day in
                    // Historic
                    VStack{
                        
                        // Days Stack
                        VStack {
                            Text("\(day)")
                                .font(.system(size: 36, weight: .bold, design: .default))
                            
                            Text("Ter")
                        }.padding(.vertical, 6)
                            .foregroundColor(Color(UIColor(red: 0.658, green: 0.658, blue: 0.658, alpha: 1)))
                            .frame(width: 163, height: 91)
                        
                        
                        // Symptoms Stack
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
                                        .foregroundColor(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)))
                                    
                                }.padding(.bottom, 15)
                                
                                
                                VStack(alignment: .leading, spacing: 5){
                                    Text("SINTOMAS")
                                        .font(.system(size: 12, weight: .medium, design: .default))
                                        .foregroundColor(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)))
                                    
                                    VStack(alignment: .leading){
                                        Text("· Febre")
                                        Text("· Tosse")
                                        Text("· Dor de garganta")
                                    }.foregroundColor(Color(UIColor(red: 0.588, green: 0.612, blue: 0.729, alpha: 1)))
                                }
                                .font(.system(size: 16))
                                .padding(.bottom, 60)
                                
                            }
                            .frame(width: 163, height: 248)
                            .background(Color(UIColor(red: 0.468, green: 0.459, blue: 0.875, alpha: 0.05)))
                            .cornerRadius(10)
                            
                            
                            Spacer()
                                .frame(width: 1, height: 248)
                                .background(Color(UIColor.lightGray))
                                .padding(.horizontal, 5)
                        }
                        
                    }
                }
                
                // Today Stack
                VStack(alignment: .leading, spacing: 15){
                    CalendarHead()
                    CalendarBody()
                }
                
            }
        }
    }
}



struct Acompanhamento_Previews: PreviewProvider {
    static var previews: some View {
        Acompanhamento()
            .previewLayout(.fixed(width: 1366, height: 1024))
    }
}


struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
