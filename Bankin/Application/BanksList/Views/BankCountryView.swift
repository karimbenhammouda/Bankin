//
//  BankCountryView.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import UIKit

class BankCountryView: UITableViewHeaderFooterView {
    var viewModel: BankCountryViewModel?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentedView: UIView!
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    func configureView() {
        guard let viewModel = viewModel else {
            return
        }
        titleLabel.text = viewModel.countryBank
    }
}
