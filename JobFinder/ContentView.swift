//
//  ContentView.swift
//  JobFinder
//
//  Created by Carlos Petit on 21-05-20.
//  Copyright © 2020 Carlos Petit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }.accentColor(.white)
        
    }
}

extension UITabBarController {
    open override func viewDidLoad() {
        let standardAppearance = UITabBarAppearance()
        standardAppearance.backgroundColor = .custom
        
        tabBar.standardAppearance = standardAppearance
    }
}

extension UIColor{
    public class var custom: UIColor {
        return UIColor(red: 164/255, green: 220/255, blue: 198/255, alpha: 1)
    }
    public class var customText: UIColor {
        return UIColor(red: 59/255, green: 59/255, blue: 59/255, alpha: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





