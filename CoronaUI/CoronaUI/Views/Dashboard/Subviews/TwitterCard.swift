//
//  TwitterCard.swift
//  CoronaUI
//
//  Created by Matheus Lima Ferreira on 4/15/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct TwitterCard: View {
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Header()
            List {
                ForEach (ministerioDaSaudeTweets, id: \.self) { tweet in
                    TweetContent(tweetBody: tweet.body)
                }
            }
        }
        .frame(width: CGFloat.dashCardWidth(), height: CGFloat.dashCardHeight())
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color.secondary, radius: 0.5, x: 0.5, y: 0.5)
    }
}

struct Header: View {
    
    var body: some View{
        HStack(spacing: 20) {
            Image("twitter").renderingMode(.original)
                .resizable().frame(width: 36, height: 36)
            
            Text("Secretaria de Saúde").font(.system(size: 24, weight: .regular, design: .default))
                .lineLimit(1)
            
            Text("@SES_RS").font(.system(size: 24, weight: .bold, design: .default))
            .foregroundColor(Color(UIColor.systemBackground))
        }
        .padding(.leading, 20)
        .padding(.top, 40)
    }
}

struct TweetContent: View {
    @State var tweetBody: String = ministerioDaSaudeTweets.last?.body ?? ""
    var body: some View {
        VStack {
            Text(tweetBody).multilineTextAlignment(.leading)
                .padding(.trailing, 10)
                .padding([ .top, .bottom, .trailing])
                .background(Color(UIColor.secondarySystemBackground))
                .frame(width: CGFloat.dashCardWidth() - 20)
        }
        .cornerRadius(10)
    }
}

struct TwitterCard_Previews: PreviewProvider {
    static var previews: some View {
        TwitterCard()
    }
}
