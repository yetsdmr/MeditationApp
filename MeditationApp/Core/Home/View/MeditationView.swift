//
//  MeditationView.swift
//  MeditationApp
//
//  Created by Yunus Emre Taşdemir on 30.10.2023.
//

import SwiftUI

struct MeditationView: View {
    
    @State var showPlayer = false
    
    var body: some View {
        VStack(spacing: 0) {
            // MARK: Image
            Image("main")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            
            // MARK: Meditation Details
            ZStack {
                // MARK: Background
                Color(red: 24/255, green: 23/255, blue: 22/255)
                
                VStack(alignment: .leading, spacing: 24) {
                    HStack(alignment: .center, spacing: 8) {
                        Text("Music")
                        Text("0s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    Text("Night Island")
                        .font(.title)
                    Text("Ease the mind into a restful night's sleep with these deep, amblent tones.")
                    
                    HStack(alignment: .center, spacing: 10) {
                        Image(systemName: "heart.fill")
                        Text("24k Liked")
                        
                        Image(systemName: "airpods")
                        Text("34k Listening")
                    }
                    
                    Divider()
                    
                    Text("Related")
                        .font(.title)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(demoRelated, id: \.id) { item in
                                VStack(alignment: .leading, spacing: 10) {
                                    Image(item.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 180)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    Text(item.name)
                                        .font(.headline)
                                    
                                    HStack(spacing: 8) {
                                        Text(item.time)
                                            .font(.caption)
                                        
                                        Text(item.category.uppercased())
                                            .font(.caption)
                                    }
                                }
                            }
                        }
                    }
                    
                    
                    Spacer()
                }
                .padding()
                .foregroundStyle(.white)
                
                VStack {
                    Spacer()
                    
                    Button {
                        showPlayer.toggle()
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundStyle(.black)
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .clipShape(Capsule())
                            .padding()
                            .padding(.bottom)
                    }
                    .fullScreenCover(isPresented: $showPlayer, content: {
                        PlayerView()
                    })
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    MeditationView()
}
