//
//  BankTableViewCell.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import UIKit
import AlamofireImage

class BankTableViewCell: UITableViewCell {
    var viewModel: BanksTableCellViewModel?
    
    @IBOutlet weak var contentedView: UIView!
    @IBOutlet weak var bankIconImageView: UIImageView!
    @IBOutlet weak var bankTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell() {
        guard let viewModel = viewModel else {
            return
        }
        contentedView.setRadius(10.0)
        bankTitleLabel.text = viewModel.titleBank
        if let urlString = viewModel.iconBank, let url = URL(string: urlString) {
            bankIconImageView.af.setImage(withURL: url)
        }
    }
    
}
