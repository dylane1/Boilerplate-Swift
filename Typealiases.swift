//
//  Typealiases.swift
//  Boilerplate
//
//  Created by Dylan Edwards on 5/18/16.
//  Copyright © 2016 Slinging Pixels Media. All rights reserved.
//

import UIKit

typealias BarButtonClosure = () -> Void
typealias BarButtonClosureWithButtonItemSource = (UIBarButtonItem) -> Void
//typealias GetDictionaryCompletion = (NSDictionary) -> Void
//typealias OpenLinkClosure = (String) -> Void

/// AlertPresentable protocol
typealias AlertParameters = (title: String, message: String)
typealias AlertPresentation = (_ alertParameters: AlertParameters) -> Void
