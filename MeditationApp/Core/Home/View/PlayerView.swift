//
//  PlayerView.swift
//  MeditationApp
//
//  Created by Yunus Emre Taşdemir on 30.10.2023.
//

import SwiftUI

struct PlayerView: View {
    @State private var value: Double = 0.0
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // MARK: Backgroud Image
            Image("music")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.black)
                            .padding()
                            .background(.white.opacity(0.5))
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                            .foregroundStyle(.white)
                            .padding()
                            .background(.black.opacity(0.5))
                            .clipShape(Circle())
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.arrow.down")
                            .foregroundStyle(.white)
                            .padding()
                            .background(.black.opacity(0.5))
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal)
                
                Spacer()
                
                VStack {
                    Text("Night Island")
                        .font(.largeTitle)
                    .fontWeight(.bold)
                    
                    Text("Sleep Music".uppercased())
                        .opacity(0.5 )
                }
                
                HStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        Image(systemName: "gobackward.15")
                            .font(.title)
                    }
                   
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "pause.fill")
                            .font(.title)
                            .foregroundStyle(.black)
                            .padding(30)
                            .background(.white)
                            .clipShape(Circle())
                            .padding()
                            .background(.white.opacity(0.5))
                            .clipShape(Circle())
                    }
                    
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "goforward.15")
                            .font(.title)
                    }
                    
                }
                
                // MARK: Playback Timeline
                VStack(spacing: 5) {
                    Slider(value: $value, in: 0...60)
                        .accentColor(.white)
                }
                .padding()
                
                HStack {
                    Text("0:00")
                    
                    Spacer()
                    
                    Text("1:00")
                }
                
                Spacer()
                    .frame(height: UIScreen.main.bounds.height / 25)
                
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    PlayerView()
}
