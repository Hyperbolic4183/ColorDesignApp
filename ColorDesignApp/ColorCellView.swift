//
//  ContentView.swift
//  Color Paret
//
//  Created by 大塚周 on 2020/05/12.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI



struct ColorCellView: View {
    @EnvironmentObject var observedrgb: ObservedRGB
    
    var colorData: colorData
    var body: some View {
        VStack {
            HStack {
                
                
                VStack(spacing: 5.0) {

                    Spacer()

                        ForEach(0..<self.colorData.v9.count){ j in
                        NavigationLink(destination: Details() ){
                        Button(" ", action: {
                            
                            print("tapped")
                            self.observedrgb.red = self.colorData.v9[j][0]
                            self.observedrgb.green = self.colorData.v9[j][1]
                            self.observedrgb.blue = self.colorData.v9[j][2]
                            
                        })
                            .frame(width: 30, height: 50)
                            .background(Color.init(UIColor(self.colorData.v9[j][0],self.colorData.v9[j][1],self.colorData.v9[j][2])))
                    }
                }

            }
                VStack(spacing: 5.0) {

                        Spacer()

                            ForEach(0..<self.colorData.v8.count){ j in
                            NavigationLink(destination: Details() ){
                            Button(" ", action: {
                                
                                print("tapped")
                                self.observedrgb.red = self.colorData.v8[j][0]
                                self.observedrgb.green = self.colorData.v8[j][1]
                                self.observedrgb.blue = self.colorData.v8[j][2]
                                
                            })
                                .frame(width: 30, height: 50)
                                .background(Color.init(UIColor(self.colorData.v8[j][0],self.colorData.v8[j][1],self.colorData.v8[j][2])))
                        }
                    }

                }
                VStack(spacing: 5.0) {

                        Spacer()

                            ForEach(0..<self.colorData.v7.count){ j in
                            NavigationLink(destination: Details() ){
                            Button(" ", action: {
                                
                                print("tapped")
                                self.observedrgb.red = self.colorData.v7[j][0]
                                self.observedrgb.green = self.colorData.v7[j][1]
                                self.observedrgb.blue = self.colorData.v7[j][2]
                                
                            })
                                .frame(width: 30, height: 50)
                                .background(Color.init(UIColor(self.colorData.v7[j][0],self.colorData.v7[j][1],self.colorData.v7[j][2])))
                        }
                    }

                }
                VStack(spacing: 5.0) {

                        Spacer()

                            ForEach(0..<self.colorData.v6.count){ j in
                            NavigationLink(destination: Details() ){
                            Button(" ", action: {
                                
                                print("tapped")
                                self.observedrgb.red = self.colorData.v6[j][0]
                                self.observedrgb.green = self.colorData.v6[j][1]
                                self.observedrgb.blue = self.colorData.v6[j][2]
                                
                            })
                                .frame(width: 30, height: 50)
                                .background(Color.init(UIColor(self.colorData.v6[j][0],self.colorData.v6[j][1],self.colorData.v6[j][2])))
                        }
                    }

                }
                VStack(spacing: 5.0) {

                        Spacer()

                            ForEach(0..<self.colorData.v5.count){ j in
                            NavigationLink(destination: Details() ){
                            Button(" ", action: {
                                
                                print("tapped")
                                self.observedrgb.red = self.colorData.v5[j][0]
                                self.observedrgb.green = self.colorData.v5[j][1]
                                self.observedrgb.blue = self.colorData.v5[j][2]
                                
                            })
                                .frame(width: 30, height: 50)
                                .background(Color.init(UIColor(self.colorData.v5[j][0],self.colorData.v5[j][1],self.colorData.v5[j][2])))
                        }
                    }

                }
                VStack(spacing: 5.0) {

                        Spacer()

                            ForEach(0..<self.colorData.v4.count){ j in
                            NavigationLink(destination: Details() ){
                            Button(" ", action: {
                                
                                print("tapped")
                                self.observedrgb.red = self.colorData.v4[j][0]
                                self.observedrgb.green = self.colorData.v4[j][1]
                                self.observedrgb.blue = self.colorData.v4[j][2]
                                
                            })
                                .frame(width: 30, height: 50)
                                .background(Color.init(UIColor(self.colorData.v4[j][0],self.colorData.v4[j][1],self.colorData.v4[j][2])))
                        }
                    }

                }
                VStack(spacing: 5.0) {

                        Spacer()

                            ForEach(0..<self.colorData.v3.count){ j in
                            NavigationLink(destination: Details() ){
                            Button(" ", action: {
                                
                                print("tapped")
                                self.observedrgb.red = self.colorData.v3[j][0]
                                self.observedrgb.green = self.colorData.v3[j][1]
                                self.observedrgb.blue = self.colorData.v3[j][2]
                                
                            })
                                .frame(width: 30, height: 50)
                                .background(Color.init(UIColor(self.colorData.v3[j][0],self.colorData.v3[j][1],self.colorData.v3[j][2])))
                        }
                    }

                }
                VStack(spacing: 5.0) {

                        Spacer()

                            ForEach(0..<self.colorData.v2.count){ j in
                            NavigationLink(destination: Details() ){
                            Button(" ", action: {
                                
                                print("tapped")
                                self.observedrgb.red = self.colorData.v2[j][0]
                                self.observedrgb.green = self.colorData.v2[j][1]
                                self.observedrgb.blue = self.colorData.v2[j][2]
                                
                            })
                                .frame(width: 30, height: 50)
                                .background(Color.init(UIColor(self.colorData.v2[j][0],self.colorData.v2[j][1],self.colorData.v2[j][2])))
                        }
                    }

                }
             VStack(spacing: 5.0) {

                        Spacer()

                            ForEach(0..<self.colorData.v1.count){ j in
                            NavigationLink(destination: Details() ){
                            Button(" ", action: {
                                
                                print("tapped")
                                self.observedrgb.red = self.colorData.v1[j][0]
                                self.observedrgb.green = self.colorData.v1[j][1]
                                self.observedrgb.blue = self.colorData.v1[j][2]
                                
                            })
                                .frame(width: 30, height: 50)
                                .background(Color.init(UIColor(self.colorData.v1[j][0],self.colorData.v1[j][1],self.colorData.v1[j][2])))
                        }
                    }

                }
         }
            Spacer()
        }
    }
    }



extension UIColor {
    
    convenience init(_ red: Int, _ green: Int, _ blue: Int, _ alpha: Int = 255) {
        let rgba = [red, green, blue, alpha].map { i -> CGFloat in
            switch i {
            case let i where i < 0:
                return 0
            case let i where i > 255:
                return 1
            default:
                return CGFloat(i) / 255
            }
        }
        self.init(red: rgba[0], green: rgba[1], blue: rgba[2], alpha: rgba[3])
    }
}

struct ColorCellView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCellView(colorData: ColorDataR[1]).environmentObject(ObservedRGB())

    }
}

