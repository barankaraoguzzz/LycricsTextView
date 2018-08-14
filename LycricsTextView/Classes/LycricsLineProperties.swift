//
//  LycricsLineProperties.swift
//  LycricsTextView
//
//  Created by Baran on 2.06.2018.
//  Copyright © 2018 CodingMind. All rights reserved.
//

import UIKit
import CoreText

class LycricsLineProperties {
    
    func getLinesArrayOfString(in textView: UITextView) -> [String] {
        /// An empty string's array
        var linesArray = [String]()
        
        guard let text = textView.text, let font = textView.font else {return linesArray}
        
        let rect = textView.frame
        
        let myFont: CTFont = CTFontCreateWithName(font.fontName as CFString, font.pointSize, nil)
        let attStr = NSMutableAttributedString(string: text)
        attStr.addAttribute(.font, value: myFont, range: NSRange(location: 0, length: attStr.length))
        
        let frameSetter: CTFramesetter = CTFramesetterCreateWithAttributedString(attStr as CFAttributedString)
        let path: CGMutablePath = CGMutablePath()
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: 100000), transform: .identity)
        
        let frame: CTFrame = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, 0), path, nil)
        guard let lines = CTFrameGetLines(frame) as? [Any] else {return linesArray}
        
        for line in lines {
            
            let lineRef = line as! CTLine
            let lineRange: CFRange = CTLineGetStringRange(lineRef)
            let range = NSRange(location: lineRange.location, length: lineRange.length)
            let lineString: String = (text as NSString).substring(with: range)
            
            linesArray.append(lineString)
            
        }
        return linesArray
    }
    
    //Mark :- Number of lines in textview
    func numberOfLines(in textView: UITextView) -> Int{
        if let fontUnwrapped = textView.font{
            return Int(textView.contentSize.height / fontUnwrapped.lineHeight)
        }
        return 0
    }
    
    //Mark :- Check isScrool in textview
    func isScrool(in textView: UITextView) -> Bool{
        if textView.contentSize.height > textView.frame.height {
            return true
        }
        return false
    }
    
    func numberLinesInFrame(in textView: UITextView) -> Int {
        var linesHeight : CGFloat = 0
        var numberSenteces = 0
        var bufferHeightSentences : CGFloat = 0
        let lines = getLinesArrayOfString(in: textView)
        
        
        if let fontUnwrapped = textView.font {
            linesHeight = fontUnwrapped.lineHeight
        }
        
        for _ in lines {
            bufferHeightSentences += linesHeight
            if bufferHeightSentences < textView.frame.height {
                numberSenteces += 1
            } else {
                break
            }
        }
        return numberSenteces
    }
    
    
    func animateLine(in textView: UITextView) {
        if let fontUnwrapped = textView.font {
            textView.setContentOffset(CGPoint(x: 0, y: textView.contentOffset.y + fontUnwrapped.lineHeight), animated: true)
        }
    }
    
    
}
