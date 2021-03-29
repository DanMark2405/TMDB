//
//  Film.swift
//  TMDB
//
//  Created by student on 22.03.21.
//
import Foundation
import SwiftUI

struct Film:Identifiable,Codable,Hashable {
    var id = UUID()
    var name: String?
    var date: String?
    var description: String?
    var imagePath: String?
   
    enum CodingKeys: String, CodingKey {
         case name = "original_title"
         case description = "overview"
         case date = "release_date"
         case imagePath = "poster_path"
     }
    func getYearReleaseDate() -> String {
        return String(date?.prefix(4) ?? "" )
     }
    
    func getPosterLink() -> String {
        return API.posterResource.rawValue + (imagePath ?? "" )
    }

    
}
struct Results:Codable
{
    var results:[Film]
}







var films = [first,second,third,fourth,five]
var first = Film( name:"Titanik", date: "2010", description: " hiniurhteriluhnersikugiklnehntulher egrw ferw             nuwehfrlewnrfiw fwenrhuweikfrnilowfhlrnwe wf3nrhiluwfrwhenflrh nfwhrluehnfluwhenfrlwr nfwhruelnhruwlfnrhlwerwfrhenwfr wfnrhluwhnrwelfhrlnwehrlwfr wfnrhluwflfnrluhwnrluwfnluwe nefhrwulfnwehfrulneuwlnwehnfr fnwhrluwefrnluewrfnlhuwefnrulhwflr ufnwhrulwefnrhwefnrhulwerfnhwelf huwefrnhluewfhnuhwernuwhfrlnwhufrueiw fnwehrulnwhfrlwhfrnlehrwfnluwefhrlnhuwefnrluhw nhwefurlnfrhurefwnhulrwenfehlrwhlnuwrhlnuhlnufrhlnurfwhlnuefrwhlnuhlnruhlnruwhlnrufu efrwhnuefrwhlnuefrwhlnuefrwhlnuefrwhlnuefrwhlnuwerfhlnuwrhlnul wfehlnuwfrnefrwnhluefrwnhluefrwnhlufrwhlnufrw                           nwefrwnhluefrwhlnuefrwhnun ", imagePath: "speaker.1")
var second  = Film( name:"Titanik", date: "2010", description: "dfsg", imagePath: "speaker.1")
var third = Film( name:"Titanik", date: "2010", description: "dfsgdfh trydfgbh ttrhrth dfdgdfgrdfg", imagePath: "speaker.1")
var fourth = Film( name:"Titanik", date: "2010", description: "dfsgdfh trydfgbh ttrhrth dfdgdfgrdfg", imagePath: "speaker.1")
var five = Film( name:"Titanik", date: "2010", description: "dfsgdfh trydfgbh ttrhrth dfdgdfgrdfg", imagePath: "speaker.1")
