//
//  TableCellClass.swift
//  POPTable
//
//  Created by Dona Maria Peter on 28/02/22.
//

import UIKit

//MARK: protocol created
protocol MovieTableViewCellProtocol : class {
    func movieLiked(_ sender: MovieTableViewCell, isLiked: Bool)
}

//Table view cell components outlet created
class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var imgPoster: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblReleaseDate: UILabel!
    @IBOutlet weak var btnLike: UIButton!
    @IBOutlet weak var btnUnlike: UIButton!
    
    
    
    
    // delegate variable create for protocol
    weak var delegate: MovieTableViewCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //Call protocol method when user click on like button
    @IBAction func movieLiked(_ sender: UIButton) {
        delegate?.movieLiked(self, isLiked: true)
    }
    
    //call protocol method when user click on unlike button
    @IBAction func movieUnliked(_ sender: UIButton) {
        delegate?.movieLiked(self, isLiked: false)
        
    }
    
}



