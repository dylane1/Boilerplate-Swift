//
//  Extensions.swift
//  Boilerplate
//
//  Created by Dylan Edwards on 8/23/16.
//  Copyright © 2016 Slinging Pixels Media. All rights reserved.
//

import UIKit
import MapKit

//MARK: - Reusable Views
/**
 Adapted from Natasha "The Robot"'s WWDC 2016 POP talk:
 
 https://realm.io/news/appbuilders-natasha-muraschev-practical-protocol-oriented-programming
 */
extension MKAnnotationView: ReusableView { }
extension MKPinAnnotationView: ReusableView { }
extension UITableViewCell: ReusableView { }
extension UICollectionViewCell: ReusableView { }

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: NSIndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCellWithIdentifier(T.reuseIdentifier, forIndexPath: indexPath) as? T else {
            fatalError("No way, Jose... could not dequeue cell w/ identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}

extension UICollectionView {
    internal func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("No way, Jose... could not dequeue cell w/ identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}


// MARK: - Email & URL validation

extension String {
    var isEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,20}"
        let emailTest  = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluateWithObject(self)
    }
    
    var safariOpenableURL: NSURL? {
        /// Remove whitespace
        let trimmedString = self.stringByTrimmingCharactersInSet( NSCharacterSet.whitespaceAndNewlineCharacterSet())
        
        guard var url = NSURL(string: trimmedString) else {
            return nil
        }
        
        /// Test for valid scheme
        if !(["http", "https"].contains(url.scheme.lowercaseString)) {
            let appendedLink = "http://".stringByAppendingString(trimmedString)
            url = NSURL(string: appendedLink)!
        }
        
        return url
    }
}
