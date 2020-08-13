//
//  ContentView.swift
//  SketchFoodApp
//
//  Created by Joga Singh on 10/08/20.
//  Copyright © 2020 Joga Singh. All rights reserved.
//

import SwiftUI

enum SelectedTab {
    case info
    case menu
    case review
}

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
                   ScrollView {
            Image(foodImage)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 200)
            
            Tabs()
            
     
                HStack{
                    TitleView()
                    Spacer()
                }.padding()
                
                HStack {
                    InfoView()
                    Spacer()
                }
                HStack {
                    ContactView()
                    Spacer()
                }
                HStack {
                    InfoView()
                    Spacer()
                }
                
                
                Spacer()
            }
            
            HStack {
                VStack {
                    Text("2 Items")
                        .font(.caption)
                        .foregroundColor(Color(#colorLiteral(red: 0.1725490196, green: 0.2392156863, blue: 0.3333333333, alpha: 1)))
                    Text("Total:")
                        .font(.title).bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.1725490196, green: 0.2392156863, blue: 0.3333333333, alpha: 1)))
                    Text("$ 25")
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.6980392157, green: 0.2470588235, blue: 0.337254902, alpha: 1)))
                }
                Spacer()
                Button(action: {}) {
                    Text("ORDER NOW")
                    .font(.system(size: 15, weight: .regular, design: .rounded))
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color(#colorLiteral(red: 0.6980392157, green: 0.2470588235, blue: 0.337254902, alpha: 1)))
                    .cornerRadius(25)
                    
                    
                }
            }.padding(.all, 10)
            .background(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 0.9725490196, alpha: 1)))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Tabs: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Text("Info")
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(Color(#colorLiteral(red: 0.5490196078, green: 0.2156862745, blue: 0.2392156863, alpha: 1)))
                .foregroundColor(Color.white)
            
            Text("Menu")
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(Color(#colorLiteral(red: 0.5725490196, green: 0.2431372549, blue: 0.231372549, alpha: 1)))
                .foregroundColor(Color.white)
            Text("Review")
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(Color(#colorLiteral(red: 0.5725490196, green: 0.2431372549, blue: 0.231372549, alpha: 1)))
                .foregroundColor(Color.white)
        }
    }
}

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Amer le cafe")
                .font(.system(size: 23, weight: .bold, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.2823529412, green: 0.2823529412, blue: 0.2823529412, alpha: 1)))
            
            HStack(alignment: .bottom) {
                HStack {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
                .foregroundColor(Color.yellow)
                
                Text("Open Now")
                    .foregroundColor(Color.green)
                    .font(.subheadline)
                    .offset(x: 0, y: 10)
            }
            
            Text("6 Place St Germain des Pres, Paris")
                .font(.callout)
            
        }
    }
}

struct InfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Info")
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.2823529412, green: 0.2823529412, blue: 0.2823529412, alpha: 1)))
            
            Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.")
                .font(.system(size: 15, weight: .regular, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.2823529412, green: 0.2823529412, blue: 0.2823529412, alpha: 1)))
        }.padding()
    }
}

struct ContactView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Contact")
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 0.2823529412, green: 0.2823529412, blue: 0.2823529412, alpha: 1)))
            HStack {
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0.937254902, green: 0.3764705882, blue: 0.3764705882, alpha: 1)))
                    
                    Text("+1 232 2323 23")
                        .font(.system(size: 15, weight: .regular, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.937254902, green: 0.3764705882, blue: 0.3764705882, alpha: 1)))
                }
                .frame(height: 10)
                .padding()
                .background(Color(#colorLiteral(red: 0.937254902, green: 0.3764705882, blue: 0.3764705882, alpha: 0.3)))
                .cornerRadius(15)
                
                HStack {
                    Image(systemName: "globe")
                        .foregroundColor(Color(#colorLiteral(red: 0.3490196078, green: 0.6392156863, blue: 0.737254902, alpha: 1)))
                    
                    Text("bugradere.com")
                        .font(.system(size: 15, weight: .regular, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.3490196078, green: 0.6392156863, blue: 0.737254902, alpha: 1)))
                }
                .frame(height: 10)
                .padding()
                .background(Color(#colorLiteral(red: 0.6941176471, green: 0.9176470588, blue: 0.9921568627, alpha: 0.5)))
                .cornerRadius(15)
                
            }
            
        }.padding()
    }
}
