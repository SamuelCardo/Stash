//
//  AnimationCell.swift
//  Stash
//
//  Created by Andy on 11/14/16.
//  Copyright © 2016 CUBiC digital. All rights reserved.
//

import UIKit

class AnimationCell: UITableViewCell {

    @IBOutlet weak var btnYes: UIButton!
    @IBOutlet weak var btnNo: UIButton!
    @IBOutlet weak var lblText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
