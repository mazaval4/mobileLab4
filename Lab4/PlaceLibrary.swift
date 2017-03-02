//
//  PlaceLibrary.swift
//  Lab4
//
//  Created by mazaval4 on 3/1/17.
//  Copyright © 2017 mazaval4. All rights reserved.
//

import Foundation
import UIKit

class PlaceLibrary{
//    var addressTitle: String
    //    var addressStreet: String
    //    var elevation: Double
    //    var latitude: Double
    //    var longitude: Double
        var name: String = ""
    //    var image: String
    //    var desc: String
    //    var category: String
    
    
    init (){
        
        let asset = NSDataAsset(name: "places", bundle: Bundle.main)
        let json = try! JSONSerialization.jsonObject(with: asset!.data, options: .allowFragments)
        

        let idk = try! JSONSerialization.data(withJSONObject: json, options: JSONSerialization.WritingOptions.prettyPrinted)
        
        if let temp = NSString(data: idk, encoding: String.Encoding.utf8.rawValue) {
            
            if let data:Data = temp.data(using: String.Encoding.utf8.rawValue) as Data!{
                do{
                    let dict = try JSONSerialization.jsonObject(with: data, options:.mutableContainers) as! [String:Any]
                    let keys = Array(dict.keys)
                    
                    
                    for value in keys{
//                        print("\(dict[value]!)")
                        let idk2 = try! JSONSerialization.data(withJSONObject: (dict[value]!), options: JSONSerialization.WritingOptions.prettyPrinted)
                        
                        if let temp2 = NSString(data: idk2, encoding: String.Encoding.utf8.rawValue){
                            if let data2:Data = temp2.data(using: String.Encoding.utf8.rawValue) as Data!{
                                let dict2 = try JSONSerialization.jsonObject(with: data2, options:.mutableContainers) as! [String:Any]
                                self.name = (dict2["name"] as? String)!
                                print(name);
                            }
                        }
                        
                        
                        
                    }
                    
                    
                } catch {
                    print("unable to convert Json to a dictionary")
                    
                }
            }
        }
    }
}















