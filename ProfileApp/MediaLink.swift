//
//  MediaLink.swift
//  ProfileApp
//
//  Created by Atakan Kömürcü on 4.02.2023.
//

import SwiftUI

struct MediaLink: View {
    
    var symbol = "play.rectangle"
    var title = "YouTube"
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 250, height: 50, alignment: .leading)
                .cornerRadius(20)
                .foregroundColor(.gray)
            
            HStack()  {
                Image(systemName: symbol)
                    .font(.title2)
                    .padding(.leading, 10)
                
                Rectangle()
                    .frame(width: 2, height: 30)
                    .padding(.trailing, 5)
                
                Text(title)
                    .font(.title3)
                    .fontWeight(.medium)
                
                Spacer()
                
                Image(systemName: "arrow.forward")
                    .padding(.trailing, 15)
            }
            
        }
        .frame(width: 250, height: 50)
    }
}

struct MediaLink_Previews: PreviewProvider {
    static var previews: some View {
        MediaLink()
    }
}
