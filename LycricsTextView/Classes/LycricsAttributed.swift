//
//  LycricsAttributed.swift
//  LycricsTextView
//
//  Created by Baran on 31.05.2018.
//  Copyright © 2018 CodingMind. All rights reserved.
//

import UIKit

class LycricsAttributed {
    
    let paragraph = NSMutableParagraphStyle()
    var fullRange : NSRange?
    var characterRange : NSRange?
    
    //Func Lycrics Attributed
    internal func attribitedProperties(textAlignment: NSTextAlignment = .center, textFont: UIFont,textColor: UIColor, lycricsColor: UIColor, text: String, filledCharacterCount: Int) -> NSMutableAttributedString {
        
        //Mark :- Range
        fullRange = NSRange(location: 0, length: text.count)
        characterRange = NSRange(location: 0, length: filledCharacterCount)
        
        paragraph.alignment = textAlignment
        let paragraphAttributes: [NSAttributedStringKey : Any] = [kCTParagraphStyleAttributeName as NSAttributedStringKey: paragraph]
        
        let lycricsString = NSMutableAttributedString(
            string: text,
            attributes: [kCTFontAttributeName as NSAttributedStringKey : textFont]
        )
        
        
        lycricsString.addAttributes(paragraphAttributes, range: fullRange!)
        lycricsString.addAttribute(.foregroundColor, value: textColor, range: fullRange!)
        lycricsString.addAttribute(.foregroundColor, value: lycricsColor, range: characterRange!)
        
        
        return lycricsString
    }
    
    
}
