//
//  MarkdownAttributes.swift
//  MarkdownTextView
//
//  Created by Indragie on 4/28/15.
//  Copyright (c) 2015 Indragie Karunaratne. All rights reserved.
//

import UIKit

/**
*  Encapsulates the attributes to use for styling various types
*  of Markdown elements.
*/
public struct MarkdownAttributes {
    public var defaultAttributes: TextAttributes = [
        NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
    ]
    
    public var strongAttributes: TextAttributes?
    public var emphasisAttributes: TextAttributes?
    
    public struct HeaderAttributes {
        public var h1Attributes: TextAttributes? = [
            NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        ]
        
        public var h2Attributes: TextAttributes? = [
            NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        ]
        
        public var h3Attributes: TextAttributes? = [
            NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        ]
        
        public var h4Attributes: TextAttributes? = [
            NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline)
        ]
        
        public var h5Attributes: TextAttributes? = [
            NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline)
        ]
        
        public var h6Attributes: TextAttributes? = [
            NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline)
        ]
        
        func attributesForHeaderLevel(_ level: Int) -> TextAttributes? {
            switch level {
            case 1: return h1Attributes
            case 2: return h2Attributes
            case 3: return h3Attributes
            case 4: return h4Attributes
            case 5: return h5Attributes
            case 6: return h6Attributes
            default: return nil
            }
        }
        
        public init() {}
    }
    
    public var headerAttributes: HeaderAttributes? = HeaderAttributes()
    
    fileprivate static let MonospaceFont: UIFont = {
        let bodyFont = UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
        let size = bodyFont.pointSize
        return UIFont(name: "Menlo", size: size) ?? UIFont(name: "Courier", size: size) ?? bodyFont
    }()
    
    public var codeBlockAttributes: TextAttributes? = [
        NSAttributedStringKey.font: MarkdownAttributes.MonospaceFont
    ]
    
    public var inlineCodeAttributes: TextAttributes? = [
        NSAttributedStringKey.font: MarkdownAttributes.MonospaceFont
    ]
    
    public var blockQuoteAttributes: TextAttributes? = [
        NSAttributedStringKey.foregroundColor: UIColor.darkGray
    ]
    
    public var orderedListAttributes: TextAttributes? = [
        NSAttributedStringKey.font: fontWithTraits(.traitBold, font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.body))
    ]
    
    public var orderedListItemAttributes: TextAttributes? = [
        NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.body),
        NSAttributedStringKey.foregroundColor: UIColor.darkGray
    ]
    
    public var unorderedListAttributes: TextAttributes? = [
        NSAttributedStringKey.font: fontWithTraits(.traitBold, font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.body))
    ]
    
    public var unorderedListItemAttributes: TextAttributes? = [
        NSAttributedStringKey.font: UIFont.preferredFont(forTextStyle: UIFontTextStyle.body),
        NSAttributedStringKey.foregroundColor: UIColor.darkGray
    ]
    
    public init() {}
}
