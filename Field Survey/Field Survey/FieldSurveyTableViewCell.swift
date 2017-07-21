//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Dominic Pilla on 7/21/17.
//  Copyright © 2017 Dominic Pilla. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {

    @IBOutlet weak var fieldImageView: UIImageView!
    @IBOutlet weak var fieldTitle: UILabel!
    @IBOutlet weak var fieldDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
