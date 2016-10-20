//
//  ColorScheme.swift
//  SAColorScheme
//
//  Created by Stefan Arambasich on 12/27/2015.
//
//  Copyright (c) 2015-2016 Stefan Arambasich. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation
import UIKit

public struct ColorScheme {
    /// The primary color
    public var primaryColor: UIColor {
        didSet {
            NotificationCenter.default.post(
                name: Notification.Name(rawValue: Keys.colorSchemeDidChangeName),
                object: nil,
                userInfo: [
                    Keys.colorSchemeColorFieldName: ColorFieldNames.primaryColorFieldName,
                    Keys.color: primaryColor,
                ]
            )
        }
    }
    /// The secondary color
    public var secondaryColor: UIColor {
        didSet {
            NotificationCenter.default.post(
                name: Notification.Name(rawValue: Keys.colorSchemeDidChangeName),
                object: nil,
                userInfo: [
                    Keys.colorSchemeColorFieldName: ColorFieldNames.secondaryColorFieldName,
                    Keys.color: secondaryColor,
                ]
            )
        }
    }
    /// An accent color
    public var accentColor: UIColor {
        didSet {
            NotificationCenter.default.post(
                name: Notification.Name(rawValue: Keys.colorSchemeDidChangeName),
                object: nil,
                userInfo: [
                    Keys.colorSchemeColorFieldName: ColorFieldNames.accentColorFieldName,
                    Keys.color: accentColor,
                ]
            )
        }
    }
    /// Content fill color
    public var fillColor: UIColor {
        didSet {
            NotificationCenter.default.post(
                name: Notification.Name(rawValue: Keys.colorSchemeDidChangeName),
                object: nil,
                userInfo: [
                    Keys.colorSchemeColorFieldName: ColorFieldNames.fillColorFieldName,
                    Keys.color: fillColor,
                ]
            )
        }
    }
    /// The color of primary text
    public var primaryTextColor: UIColor {
        didSet {
            NotificationCenter.default.post(
                name: Notification.Name(rawValue: Keys.colorSchemeDidChangeName),
                object: nil,
                userInfo: [
                    Keys.colorSchemeColorFieldName: ColorFieldNames.primaryTextColorFieldName,
                    Keys.color: primaryTextColor,
                ]
            )
        }
    }
    /// The color of secondary text
    public var secondaryTextColor: UIColor {
        didSet {
            NotificationCenter.default.post(
                name: Notification.Name(rawValue: Keys.colorSchemeDidChangeName),
                object: nil,
                userInfo: [
                    Keys.colorSchemeColorFieldName: ColorFieldNames.secondaryTextColorFieldName,
                    Keys.color: secondaryTextColor,
                ]
            )
        }
    }
    /// The color of text that isn't primary or secondary
    public var textColor: UIColor {
        didSet {
            NotificationCenter.default.post(
                name: Notification.Name(rawValue: Keys.colorSchemeDidChangeName),
                object: nil,
                userInfo: [
                    Keys.colorSchemeColorFieldName: ColorFieldNames.textColorFieldName,
                    Keys.color: textColor,
                ]
            )
        }
    }
    /// A divider color
    public var dividerColor: UIColor {
        didSet {
            NotificationCenter.default.post(
                name: Notification.Name(rawValue: Keys.colorSchemeDidChangeName),
                object: nil,
                userInfo: [
                    Keys.colorSchemeColorFieldName: ColorFieldNames.dividerColorFieldName,
                    Keys.color: dividerColor,
                ]
            )
        }
    }
    
    /**
        Posts a generic notification about the color scheme having changed.
    */
    public func postColorDidChangeNotification() {
        NotificationCenter.default.post(
            name: Notification.Name(rawValue: Keys.colorSchemeDidChangeName),
            object: nil,
            userInfo: nil
        )
    }
}


extension ColorScheme {
    /**
        Keys for identifiers in dictionaries and elsewhere.
    */
    public struct Keys {
        public static let colorSchemeDidChangeName = "ColorSchemeDidChangeNotification"
        public static let colorSchemeColorFieldName = "ColorSchemeColorField"
        public static let color = "Color"
    }
    
    public struct ColorFieldNames {
        static let primaryColorFieldName = "primaryColor"
        static let secondaryColorFieldName = "secondaryColor"
        static let accentColorFieldName = "accentColor"
        static let fillColorFieldName = "fillColor"
        static let primaryTextColorFieldName = "primaryTextColor"
        static let secondaryTextColorFieldName = "secondaryTextColor"
        static let textColorFieldName = "textColor"
        static let dividerColorFieldName = "dividerColor"
    }
}
