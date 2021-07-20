//
//  ContentView.swift
//  UITrace2021年7月20日
//
//  Created by 吉田周平 on 2021/07/20.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "list.dash")
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 48, height: 48)
                        .background(Color.white)
                        .cornerRadius(24)
                        .shadow(color: .black,
                                radius: 4,
                                x: 4,
                                y: 4)
                        .padding()
                })
                Spacer()
                Button(action: {}, label: {
                    HStack {
                        Image(systemName: "clock.arrow.circlepath")
                            .resizable()
                            .foregroundColor(.green)
                            .frame(width: 32, height: 32)
                        Text("History")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .frame(height: 48)
                    .background(Color.white)
                    .cornerRadius(24)
                    .shadow(color: .black,
                            radius: 4,
                            x: 4,
                            y: 4)
                    .padding()
                })
            }
            Text("Pride Shake")
                .foregroundColor(.black)
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 36)
            Text("Just for June: berry frozen custard, mango + passion fruit, plus 5% of sales go to The Trevor Project.")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineSpacing(10)
                .padding(.horizontal, 48)
            Spacer()
            HStack {
                Image("hamburger")
                    .resizable()
                    .frame(width: 36, height: 36)
                VStack(alignment: .leading) {
                    Text("Good afternoon, Mobbin")
                        .fontWeight(.bold)
                    Text("Welcome back, time to get shackin'")
                        .foregroundColor(.secondary)
                }
                .padding()
            }
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(12)
            .padding()
            
            VStack {
                Text("Choose Order Type")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                HStack {
                    Button(action: {}, label: {
                        HStack {
                            Image(systemName: "bag.fill")
                                .resizable()
                                .foregroundColor(.green)
                                .frame(width: 24, height: 24)
                            Text("Pick-up")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay(
                            RoundedRectangle(cornerRadius: 32)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .padding()
                    })
                    Button(action: {}, label: {
                        HStack {
                            Image(systemName: "bicycle")
                                .resizable()
                                .foregroundColor(.green)
                                .frame(width: 24, height: 24)
                            Text("Pick-up")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay(
                            RoundedRectangle(cornerRadius: 32)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .padding()
                    })
                }
                .padding(.bottom)
            }
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(12)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea([.bottom])
        .background(Image("shake-shack")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class ContentViewModel: ObservableObject {
    @Published var screenSize: CGSize!
}
