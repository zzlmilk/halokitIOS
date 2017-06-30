//
//  BGPersonalInfoCell.swift
//  HaloKitProduct
//
//  Created by 范博 on 2017/6/29.
//  Copyright © 2017年 范博. All rights reserved.
//

import UIKit

class BGPersonalInfoheadIconCell: UITableViewCell {

    static let cell_id = "PersonalInfoCell"

    
    lazy var heagImgView : UIImageView = {
        var imgView = UIImageView.init()
        return imgView
    
    }()
    
    lazy var titleLabel  : UILabel = {
        var titleLabel = UILabel()
        return titleLabel
    }()
    
    class func  dequeueReusable(_ tableView:UITableView, indexPath:IndexPath) -> BGPersonalInfoheadIconCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cell_id, for: indexPath) as! BGPersonalInfoheadIconCell
        cell.accessoryType  = .disclosureIndicator
        return cell
    }
    
    class func returnCell_hight() -> CGFloat{
        return 40
    }

    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(heagImgView)
        self.contentView.addSubview(titleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var model:BGUserModel = BGUserModel() {
        didSet{
//            heagImgView.image = 
//            titleLabel.text = 
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


}

class BGPersonalInfoOthersCell: UITableViewCell {
    
    static let cell_id = "InfoOthersCell"


    lazy var heagImgView : UIImageView = {
        var imgView = UIImageView.init()
        return imgView
        
    }()
    
    lazy var titleLabel  : UILabel = {
        var titleLabel = UILabel()
        return titleLabel
    }()
    
    lazy var cententLabel  : UILabel = {
        var cententLabel = UILabel()
        return cententLabel
    }()

    
    class func  dequeueReusable(_ tableView:UITableView, indexPath:IndexPath) -> BGPersonalInfoOthersCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cell_id, for: indexPath) as! BGPersonalInfoOthersCell
        cell.accessoryType  = .disclosureIndicator
        return cell
    }
    
    class func returnCell_hight() -> CGFloat{
        return 40
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(heagImgView)
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(cententLabel)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var model:BGUserModel = BGUserModel() {
        didSet{
            // heagImgView.image =
            // titleLabel.text =
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
}

