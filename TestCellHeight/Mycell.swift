//
//  Mycell.swift
//  TestCellHeight
//
//  Created by ys on 16/1/11.
//  Copyright © 2016年 ys. All rights reserved.
//

import UIKit

class Mycell: UITableViewCell {
    
    func getContent(let str: String) {
//        self.textLabel?.text = str
        var size: CGSize = (str as NSString).boundingRectWithSize(CGSize(width: 200, height: 1000), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName:(self.textLabel?.font)!], context: nil).size
        size.width += 60
        size.height += 60
        self.frame.size = CGSizeMake(self.frame.size.width, size.height + 20)
        
        let button: UIButton = UIButton(type: UIButtonType.System)
        button.frame = CGRectMake(10, 10, size.width, size.height)
        button.titleLabel?.numberOfLines = 0
        button.setTitle(str, forState: UIControlState.Normal)
        button.userInteractionEnabled = false
        button.contentEdgeInsets = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        button.setBackgroundImage(self.stretchableImage(UIImage(named: "chat_recive_nor")!), forState: UIControlState.Normal)
        button.setBackgroundImage(self.stretchableImage(UIImage(named: "chat_recive_press_pic")!), forState: UIControlState.Highlighted)
        self.contentView.addSubview(button)
        
    }
    
    func stretchableImage(let image: UIImage) -> UIImage {
        return image.stretchableImageWithLeftCapWidth(Int(image.size.width * 0.5), topCapHeight: Int(image.size.height * 0.5))
    }

}
