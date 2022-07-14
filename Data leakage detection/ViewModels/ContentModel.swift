//
//  ContentModel.swift
//  Data leakage detection
//
//  Created by Shifa on 13/07/22.
//

import Foundation

class ContentModel: ObservableObject{
    
    @Published var modules = [Module]()
    
    init() {
        
        getLocalData()
        
    }
    
    func getLocalData() {
        
        //Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            // Read the file into a data object
            let jsonData = try Data(contentsOf : jsonUrl!)
            
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //Assign parsed modules to modules property
            self.modules = modules
        }
        catch{
            //TODO log error
            print("Couldn't parse local data")
        }
        
        // Try to decode the json into an array of modules
    }
    

    
    
}
