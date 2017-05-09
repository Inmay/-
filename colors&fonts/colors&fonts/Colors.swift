//
//  Colors.swift
//  HaiAi_SW
//
//  Created by Inmay /人◕ ‿‿ ◕人\ on 15/11/14.
//  Copyright © 2015年 inmay. All rights reserved.
//

import UIKit

//MARK: color
@inline(__always) func colorWith(_ red:CGFloat,  green:CGFloat,  blue:CGFloat, alpha:CGFloat) ->UIColor{
    
    return UIColor.init(red: red.truncatingRemainder(dividingBy: 255.0), green: green.truncatingRemainder(dividingBy: 255.0), blue: blue.truncatingRemainder(dividingBy: 255.0), alpha: alpha.truncatingRemainder(dividingBy: 1))
    
}

extension UIColor{
    
    
    static func gray240()->UIColor{
        return UIColor.init(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
    }
    static func 灰色230()->UIColor{
        return UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
    }
    
    static func 青磁()->UIColor{
        return UIColor.init(red: 105/255, green: 176/255, blue: 172/255, alpha: 1)
    }
    static func 水浅葱()->UIColor{
        return UIColor.init(red: 102/255, green: 186/255, blue: 183/255, alpha: 1)
    }
    
    ///一斥染
    static func 一斥染()->UIColor{
        return UIColor.init(red: 181/255, green: 93/255, blue: 76/255, alpha: 1)
    }
    
    ///猩猩绯
    static func 猩猩绯()->UIColor{
        return UIColor.init(red: 232/255, green: 48/255, blue: 21/255, alpha: 1)
    }
    
    ///花叶
    static func 花叶()->UIColor{
        return UIColor.init(red: 247/255, green: 192/255, blue: 66/255, alpha: 1)
    }
    
    ///白绿
    static func 白绿()->UIColor{
        return UIColor.init(red: 168/255, green: 216/255, blue: 185/255, alpha: 1)
    }
    
    ///沈香茶
    static func 沈香茶()->UIColor{
        return UIColor.init(red: 79/255, green: 114/255, blue: 108/255, alpha: 1)
    }
    ///照柿
    static func 照柿()->UIColor{
        return UIColor.init(red: 219/255, green: 142/255, blue: 113/255, alpha: 1)
    }
    ///蓝海松茶
    static func 蓝海松茶()->UIColor{
        return UIColor.init(red: 15/255, green: 76/255, blue: 58/255, alpha: 1)
    }
    
    ///青竹
    static func 青竹()->UIColor{
        return self.init(red: 0/255, green: 137/255, blue: 108/255, alpha: 1)
    }

    ///青绿
    static func 青绿()->UIColor{
        return UIColor.init(red: 0/255, green: 137/255, blue: 108/255, alpha: 1)
    }
    
    ///ビロ一ド
    static func ビロ一ド()->UIColor{
        return UIColor.init(red: 218/255, green: 189/255, blue: 220/255, alpha: 1)
    }
    
    ///琉璃
    static func 琉璃()->UIColor{
        return UIColor.init(red: 0/255, green: 92/255, blue: 175/255, alpha: 1)
    }
    ///群青
    static func 群青()->UIColor{
        return UIColor.init(red: 81/255, green: 168/255, blue: 221/255, alpha: 1)
    }
    
    ///似紫
    static func 似紫()->UIColor{
        return UIColor.init(red: 86/255, green: 46/255, blue: 55/255, alpha: 1)
    }
    ///紫鸾
    static func 紫鸾()->UIColor{
        return UIColor.init(red: 96/255, green: 55/255, blue: 62/255, alpha: 1)
    }
    
    ///踯躅
    static func 踯躅()->UIColor{
        return UIColor.init(red: 224/255, green: 60/255, blue: 138/255, alpha: 1)
    }
    
    ///菖蒲
    static func 菖蒲()->UIColor{
        return UIColor.init(red: 224/255, green: 60/255, blue: 138/255, alpha: 1)
    }
    
    ///褐
    static func kachi()->UIColor{
        return UIColor.init(red: 8/255, green: 25/255, blue: 45/255, alpha: 1)
    }
    
    ///白群
    static func 白群()->UIColor{
        return UIColor.init(red: 120/255, green: 194/255, blue: 196/255, alpha: 1)
    }
    
    ///御召茶
    static func 御召茶()->UIColor{
        return UIColor.init(red: 55/255, green: 107/255, blue: 109/255, alpha: 1)
    }
    
    ///梅鼠
    static func 梅鼠()->UIColor{
        return UIColor.init(red: 177/255, green: 150/255, blue: 147/255, alpha: 1)
    }
    
    static func randomColor()->UIColor {
        switch arc4random_uniform(37){
        case 0...3:return 御召茶()
        case 4...8:return 群青()
        case 9...12:return 花叶()
        case 13...16:return 白绿()
        case 17...20:return 一斥染()
        case 21...23:return 青磁()
        case 24...26 :return 菖蒲()
            case 27...29 :return 紫鸾()
            case 30...33 :return 蓝海松茶()
            case 34...37 :return 青磁()
        default:return 白群()
        }
    }
    
}
