//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Dominic Pilla on 7/21/17.
//  Copyright © 2017 Dominic Pilla. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var fieldSurvey: FieldSurvey?
    
    var dateFormatter = DateFormatter()

    @IBOutlet weak var fieldImageIcon: UIImageView!
    @IBOutlet weak var fieldTitle: UILabel!
    @IBOutlet weak var fieldDate: UILabel!
    @IBOutlet weak var fieldDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Observation"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        fieldImageIcon.image = fieldSurvey?.classification.image
        fieldTitle.text = fieldSurvey?.title
        
        if let date = fieldSurvey?.date {
            fieldDate.text = dateFormatter.string(from: date)
        } else {
            fieldDate.text = ""
        }
        
        fieldDescription.text = fieldSurvey?.description

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
