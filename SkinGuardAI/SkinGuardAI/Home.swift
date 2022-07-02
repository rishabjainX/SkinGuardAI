//
//  Home.swift
//  eDoctor
//
//  Created by Rishab Jain on 7/2/22.
//

import SwiftUI

struct ImageOverlay2: View {
    var body: some View {
        ZStack {
            Text("Monkeypox")
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(11)
    }
}

struct Home: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("SkinGuard AI")
                    .font(.title)
                    .fontWeight(.bold)
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                
                Text("What SkinGuard AI Does")
                    .font(.headline)
                
                Text("SkinGuard AI is an app that uses image recognition and ML technology to detect skin problems from a photo. This helps you identify the problem and take action quickly.").padding()
                
                Text("How It Works")
                    .font(.headline)
                
                Text("This app uses several databases of skin problems, and then uses AI to compare the inputted picture to the problems.")
                    .padding()
                
                Text("Trending Skin Problems")
                    .font(.headline)
                    .padding()

                Text("Burns, Rashes, Insect Bites, Monkeypox, Hives")

                
//                HStack {
//                    Text("Trending Now")
//                        .font(.title2)
//                        .fontWeight(.bold)
//                        .foregroundColor(.red)
//                        .padding(.horizontal, 5)
//                    Image("trending")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 45, height: 45)
//                }
//
//                Image("monkeypox")
//                    .resizable()
//                    .scaledToFit()
//                    .cornerRadius(20)
//                    .overlay(ImageOverlay2(), alignment: .bottomLeading)

            }
            .padding()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
