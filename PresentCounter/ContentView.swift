//
//  ContentView.swift
//  AnimalCrossingPresent
//
//  Created by 下澤一輝 on 2020/08/15.
//  Copyright © 2020 下澤一輝. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @UserDefault(key: "tama", defaultValue: "0")
    static var tamaDisplay: String
    @UserDefault(key: "patch", defaultValue: "0")
    static var patchDisplay: String
    @UserDefault(key: "jinpei", defaultValue: "0")
    static var jinpeiDisplay: String
    @UserDefault(key: "mikacchi", defaultValue: "0")
    static var mikacchiDisplay: String
    @UserDefault(key: "ramune", defaultValue: "0")
    static var ramuneDisplay: String
    @UserDefault(key: "buke", defaultValue: "0")
    static var bukeDisplay: String
    @UserDefault(key: "binta", defaultValue: "0")
    static var bintaDisplay: String
    @UserDefault(key: "ichigo", defaultValue: "0")
    static var ichigoDisplay: String
    @UserDefault(key: "jun", defaultValue: "0")
    static var junDisplay: String
    @UserDefault(key: "jack", defaultValue: "0")
    static var jackDisplay: String
    
    @State private var tamaCount = Int(ContentView.tamaDisplay) ?? 0
    @State private var patchCount = Int(ContentView.patchDisplay) ?? 0
    @State private var jinpeiCount = Int(ContentView.jinpeiDisplay) ?? 0
    @State private var mikacchiCount = Int(ContentView.mikacchiDisplay) ?? 0
    @State private var ramuneCount = Int(ContentView.ramuneDisplay) ?? 0
    @State private var bukeCount = Int(ContentView.bukeDisplay) ?? 0
    @State private var bintaCount = Int(ContentView.bintaDisplay) ?? 0
    @State private var ichigoCount = Int(ContentView.ichigoDisplay) ?? 0
    @State private var junCount = Int(ContentView.junDisplay) ?? 0
    @State private var jackCount = Int(ContentView.jackDisplay) ?? 0
    
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Image("background")
                    .resizable(resizingMode: .tile)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("PresentCounter")
                        .foregroundColor(Color.black)
                        .bold()
                        .font(Font.custom("CourierNewPS-BoldItalicMT", size: 40.0))
                        .onTapGesture(count: 2) {
                            self.tamaCount = 0
                            ContentView.tamaDisplay = "0"
                            self.patchCount = 0
                            ContentView.patchDisplay = "0"
                            self.jinpeiCount = 0
                            ContentView.jinpeiDisplay = "0"
                            self.mikacchiCount = 0
                            ContentView.mikacchiDisplay = "0"
                            self.ramuneCount = 0
                            ContentView.ramuneDisplay = "0"
                            self.bukeCount = 0
                            ContentView.bukeDisplay = "0"
                            self.bintaCount = 0
                            ContentView.bintaDisplay = "0"
                            self.ichigoCount = 0
                            ContentView.ichigoDisplay = "0"
                            self.junCount = 0
                            ContentView.junDisplay = "0"
                            self.jackCount = 0
                            ContentView.jackDisplay = "0"
                    }
                    
                    HStack {
                        VStack{
                            Button(action:{
                                self.tamaCount += 1
                                ContentView.tamaDisplay = String(self.tamaCount)
                            }){
                                Image("tama")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geometry.size.width / 4, height: geometry.size.width / 4, alignment: .leading)
                            }.padding(-10)
                            
                            Text("\(self.tamaCount % 65)")
                                .foregroundColor(Color.pink)
                                .bold()
                                .font(.largeTitle)
                                .font(.system(.title, design: .monospaced))
                                .onTapGesture {
                                    if(self.tamaCount == 0) {
                                        return;
                                    }
                                    self.tamaCount = self.tamaCount  - 1
                            }
                        }.padding()
                        VStack{
                            Button(action:{
                                self.patchCount += 1
                                ContentView.patchDisplay = String(self.patchCount)
                            }){
                                Image("patch")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geometry.size.width / 4, height: geometry.size.width / 4, alignment: .leading)
                            }.padding(-10)
                            
                            Text("\(self.patchCount % 65)")
                                .foregroundColor(Color.pink)
                                .bold()
                                .font(.largeTitle)
                                .font(.system(.title, design: .monospaced))
                                .onTapGesture {
                                    if(self.patchCount == 0) {
                                        return;
                                    }
                                    self.patchCount = self.patchCount  - 1
                            }
                        }.padding()
                        VStack{
                            Button(action:{
                                self.jinpeiCount += 1
                                ContentView.jinpeiDisplay = String(self.jinpeiCount)
                            }){
                                Image("jinpei")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geometry.size.width / 4, height: geometry.size.width / 4, alignment: .leading)
                            }.padding(-10)
                            
                            Text("\(self.jinpeiCount % 65)")
                                .foregroundColor(Color.pink)
                                .bold()
                                .font(.largeTitle)
                                .font(.system(.title, design: .monospaced))
                                .onTapGesture {
                                    if(self.jinpeiCount == 0) {
                                        return;
                                    }
                                    self.jinpeiCount = self.jinpeiCount  - 1
                            }
                        }.padding()
                    }.padding(-10)
                    HStack {
                        VStack{
                            Button(action:{
                                self.mikacchiCount += 1
                                ContentView.mikacchiDisplay = String(self.mikacchiCount)
                            }){
                                Image("mikacchi")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geometry.size.width / 4, height: geometry.size.width / 4, alignment: .leading)
                            }.padding(-10)
                            
                            Text("\(self.mikacchiCount % 65)")
                                .foregroundColor(Color.pink)
                                .bold()
                                .font(.largeTitle)
                                .font(.system(.title, design: .monospaced))
                                .onTapGesture {
                                    if(self.mikacchiCount == 0) {
                                        return;
                                    }
                                    self.mikacchiCount = self.mikacchiCount  - 1
                            }
                        }.padding()
                        VStack{
                            Button(action:{
                                self.ramuneCount += 1
                                ContentView.ramuneDisplay = String(self.ramuneCount)
                            }){
                                Image("ramune")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geometry.size.width / 4, height: geometry.size.width / 4, alignment: .leading)
                            }.padding(-10)
                            
                            Text("\((self.ramuneCount)%65)")
                                .foregroundColor(Color.pink)
                                .bold()
                                .font(.largeTitle)
                                .font(.system(.title, design: .monospaced))
                                .onTapGesture {
                                    if(self.ramuneCount == 0) {
                                        return;
                                    }
                                    self.ramuneCount = self.ramuneCount - 1
                            }
                        }.padding()
                        VStack{
                            Button(action:{
                                self.bukeCount += 1
                                ContentView.bukeDisplay = String(self.bukeCount)
                            }){
                                Image("buke")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geometry.size.width / 4, height: geometry.size.width / 4, alignment: .leading)
                            }.padding(-10)
                            
                            Text("\((self.bukeCount)%65)")
                                .foregroundColor(Color.pink)
                                .bold()
                                .font(.largeTitle)
                                .font(.system(.title, design: .monospaced))
                                .onTapGesture {
                                    if(self.bukeCount == 0) {
                                        return;
                                    }
                                    self.bukeCount = self.bukeCount - 1
                            }
                        }.padding()
                    }.padding(-10)
                    HStack {
                        VStack{
                            Button(action:{
                                self.bintaCount += 1
                                ContentView.bintaDisplay = String(self.bintaCount)
                            }){
                                Image("binta")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geometry.size.width / 4, height: geometry.size.width / 4, alignment: .leading)
                            }.padding(-10)
                            
                            Text("\(self.bintaCount % 65)")
                                .foregroundColor(Color.pink)
                                .bold()
                                .font(.largeTitle)
                                .font(.system(.title, design: .monospaced))
                                .onTapGesture {
                                    if(self.bintaCount == 0) {
                                        return;
                                    }
                                    self.bintaCount = self.bintaCount  - 1
                            }
                        }.padding()
                        VStack{
                            Button(action:{
                                self.ichigoCount += 1
                                ContentView.ichigoDisplay = String(self.ichigoCount)
                            }){
                                Image("ichigo")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geometry.size.width / 4, height: geometry.size.width / 4, alignment: .leading)
                            }.padding(-10)
                            
                            Text("\((self.ichigoCount)%65)")
                                .foregroundColor(Color.pink)
                                .bold()
                                .font(.largeTitle)
                                .font(.system(.title, design: .monospaced))
                                .onTapGesture {
                                    if(self.ichigoCount == 0) {
                                        return;
                                    }
                                    self.ichigoCount = self.ichigoCount - 1
                            }
                        }.padding()
                        VStack{
                            Button(action:{
                                self.junCount += 1
                                ContentView.junDisplay = String(self.junCount)
                            }){
                                Image("jun")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geometry.size.width / 4, height: geometry.size.width / 4, alignment: .leading)
                            }.padding(-10)
                            
                            Text("\((self.junCount)%65)")
                                .foregroundColor(Color.pink)
                                .bold()
                                .font(.largeTitle)
                                .font(.system(.title, design: .monospaced))
                                .onTapGesture {
                                    if(self.junCount == 0) {
                                        return;
                                    }
                                    self.junCount = self.junCount - 1
                            }
                        }.padding()
                    }.padding(-10)
                    HStack{
                        VStack{
                            Button(action:{
                                self.jackCount += 1
                                ContentView.jackDisplay = String(self.jackCount)
                            }){
                                Image("jack")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: geometry.size.width / 4, height: geometry.size.width / 4, alignment: .leading)
                            }.padding(-10)
                            
                            Text("\((self.jackCount)%65)")
                                .foregroundColor(Color.pink)
                                .bold()
                                .font(.largeTitle)
                                .font(.system(.title, design: .monospaced))
                                .onTapGesture {
                                    if(self.jackCount == 0) {
                                        return;
                                    }
                                    self.jackCount = self.jackCount - 1
                            }
                        }.padding()
                    }
                }
            }
        }
    }
}

@propertyWrapper
struct UserDefault<T> {
    var key: String
    var defaultValue: T
    var wrappedValue: T {
        set { UserDefaults.standard.set(newValue, forKey: key) }
        get { UserDefaults.standard.object(forKey: key) as? T ?? defaultValue }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
