//
//  newTableViewCell.swift
//  SFProject
//
//  Created by wemac on 2019/9/19.
//  Copyright © 2019 wemac. All rights reserved.
//

import UIKit
import SnapKit

class newTableViewCell: UITableViewCell {
    var leftImageView : UIImageView?
    var titleLabel    : UILabel?
    var timeLabel     : UILabel?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = UITableViewCell.SelectionStyle.none
        
        self.createCellUI()
    }
    
    func createCellUI(){
        self.leftImageView = UIImageView.init()
        self.leftImageView?.backgroundColor = UIColor.red
        self.contentView.addSubview(self.leftImageView!)
        self.leftImageView?.snp_makeConstraints({ (make) in
            make.left.top.equalTo(10)
            make.width.height.equalTo(50)
            
        })
        
        self.titleLabel = UILabel.init()
        self.titleLabel?.textColor = UIColor.black
        self.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        self.contentView.addSubview(self.titleLabel!)
        self.titleLabel?.snp_makeConstraints({ (make) in
            make.left.equalTo(self.leftImageView!.snp_right).offset(10)
            make.top.equalTo(self.leftImageView!)
            make.right.equalTo(self.contentView).offset(-10)
            
        })
        
        self.timeLabel = UILabel.init()
        
        self.timeLabel?.textColor = UIColor.black
        self.timeLabel?.font = UIFont.systemFont(ofSize: 15)
        self.contentView.addSubview(self.timeLabel!)
        self.timeLabel?.snp_makeConstraints({ (make) in
            make.left.equalTo(self.leftImageView!.snp_right).offset(10)
            make.top.equalTo(self.titleLabel!.snp_bottom).offset(10)
            make.right.equalTo(self.contentView).offset(-10)
            
        })
    }
    
    func cellModel(model: newModel?) {
        if let tempModel = model {
            self.imageView?.image = UIImage.init(named: "")
            self.titleLabel?.text = tempModel.title
            self.timeLabel?.text = tempModel.date
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
