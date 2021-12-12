//
//  BankTableViewCell.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import UIKit

class BankTableViewCell: UITableViewCell {
    var viewModel: BanksTableCellViewModel?
    
    @IBOutlet weak var contentedView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell() {
        contentedView.setRadius(10.0)
    }
    
}
