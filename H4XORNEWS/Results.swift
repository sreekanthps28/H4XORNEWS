//
//  Results.swift
//  H4XORNEWS
//
//  Created by SREEKANTH PS on 01/03/2023.
//

import Foundation

struct Results:Decodable{
    let hits:[Post]
}

struct Post:Decodable,Identifiable{
    var id:String{
        return objectID
    }
    let objectID:String
    let url:String?
    let points:Int
    let title:String
    let storyText:String?
}
