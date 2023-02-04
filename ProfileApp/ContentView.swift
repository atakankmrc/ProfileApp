//
//  ContentView.swift
//  ProfileApp
//
//  Created by Atakan Kömürcü on 4.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    let imageURL = URL(string: "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
    
    var body: some View {
        VStack {
            ZStack {
                AsyncImage(url: imageURL, content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: 150, maxHeight: 150)
                        .clipShape(Circle())
                }, placeholder: {
                    ProgressView()
                })
            }
            .frame(width: 150, height: 150)
            .padding(.top, 10)
            
            Rectangle()
                .frame(width: 300, height: 4)
                .cornerRadius(2)
                .padding(.vertical, 40)
                .foregroundColor(.gray)
            
            VStack {
                
                MediaLink(symbol: "play.rectangle", title: "YouTube")
                    .onTapGesture {
                        print("asdasd")
                    }
                
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
