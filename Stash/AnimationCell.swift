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
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var rightView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func yesTapped(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            self.leftView.transform = CGAffineTransform(translationX: self.leftView.frame.size.width, y: 0)
            self.rightView.transform = CGAffineTransform(translationX: -self.rightView.frame.size.width, y: 0)
            
            }, completion: { finished in
                
        })
    }

}
