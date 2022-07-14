//
//  Data_leakage_detectionApp.swift
//  Data leakage detection
//
//  Created by Shifa on 13/07/22.
//

import SwiftUI


@main


struct Data_leakage_detectionApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            
            
            HomeView()
            
            
                .environmentObject(ContentModel())
            
        }
    }
}
