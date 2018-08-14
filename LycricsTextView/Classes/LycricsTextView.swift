//
//  LycricsTextView.swift
//  LycricsTextView
//
//  Created by Baran on 31.05.2018.
//  Copyright © 2018 CodingMind. All rights reserved.
//

import UIKit

public class LycricsTextView: UITextView {

    private var timer = Timer()
    private var attribute = LycricsAttributed()
    private var lineProp = LycricsLineProperties()
    private var linesArray : [String]?
    private var linesNumber : Int?
    private var isScrool : Bool?
    private var numberLinesInFrame : Int?
    
    //Mark :- For timer
    private var filledCharacterCount = 0
    private var filledCharacterCountInLine = 0
    private var filledLineCount = 0
    
    open var lycricsColor : UIColor = .red
    open var animateTime : CGFloat = 10.0
    
    
    
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        configureTextView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureTextView()
    }
    
    override public func layoutSubviews() {
        self.fillLinesProperties()
        
    }
    

}

//Mark :- Configure
extension LycricsTextView {
    
    func configureTextView() {
        self.attributedText = fastAttributed()
        
    }
    
    fileprivate func fastAttributed(filledCharacterCount : Int = 0) -> NSMutableAttributedString {
        let attr = self.attribute.attribitedProperties(textAlignment: self.textAlignment, textFont: self.font!, textColor: UIColor.black, lycricsColor: self.lycricsColor, text: self.text, filledCharacterCount: filledCharacterCount)
        
        return attr
    }
    
    fileprivate func fillLinesProperties(){
        self.linesArray = lineProp.getLinesArrayOfString(in: self)
        self.linesNumber = lineProp.numberOfLines(in: self)
        self.isScrool = lineProp.isScrool(in: self)
        self.numberLinesInFrame = lineProp.numberLinesInFrame(in: self)
    }
    
}

//Mark :- Animate Timer
extension LycricsTextView {
    
    func initialTimer(interval: TimeInterval){
        if timer.isValid {
            timer.invalidate()
        } else {
            timer = Timer.scheduledTimer(timeInterval: interval, target: self,   selector: (#selector(self.updateTimer)), userInfo: nil, repeats: true)
        }
    }
    
    @objc func updateTimer() {
        filledCharacterCount += 1
        filledCharacterCountInLine += 1
        self.attributedText = fastAttributed(filledCharacterCount: filledCharacterCount)
        
        
        //TextView animate
        if isScrool! {
            if linesNumber != 0 {
                if filledCharacterCountInLine == linesArray![filledLineCount].count {
                    if filledLineCount < 1 || (linesNumber! - filledLineCount) < numberLinesInFrame! { 
                        
                    } else {
                        lineProp.animateLine(in: self)
                    }
                    filledLineCount += 1
                    filledCharacterCountInLine = 0
                }
            }
        }
        
        
        if self.text.count == filledCharacterCount {
            timer.invalidate()
        }
    }
}

//Mark :- Animating Configure
extension LycricsTextView {
    public func startLycrics() {
        let timeInterval = TimeInterval(animateTime / CGFloat(self.text.count))
        self.initialTimer(interval: timeInterval)
    }
    
    public func stopLycrics() {
        if timer.isValid {
            timer.invalidate()
        } else {
            print("Already animate is not active")
        }
    }
}



