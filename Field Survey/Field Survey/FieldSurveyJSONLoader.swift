//
//  FieldSurveyJSONLoader.swift
//  Field Survey
//
//  Created by Dominic Pilla on 7/21/17.
//  Copyright © 2017 Dominic Pilla. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    
    class func load(fileName: String) -> [FieldSurvey] {
        var surveys = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            surveys = FieldSurveyJSONParser.parse(data)
        }
        return surveys
    }
}
