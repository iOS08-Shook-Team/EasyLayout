//  Copyright (c) 2024 iOS08 Shook Team
//
//  EasyLayout
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit

// MARK: - YAnchor

public struct YAnchor {
    enum Edge {
        case top(Anchorable)
        case bottom(Anchorable)

        var standard: NSLayoutYAxisAnchor {
            switch self {
            case let .top(view): view.topAnchor
            case let .bottom(view): view.bottomAnchor
            }
        }
    }

    let edge: Edge

    static func top(_ view: Anchorable) -> Self {
        YAnchor(edge: .top(view))
    }

    static func bottom(_ view: Anchorable) -> Self {
        YAnchor(edge: .bottom(view))
    }
}

// MARK: - XAnchor

public struct XAnchor {
    enum Edge {
        case leading(Anchorable)
        case trailing(Anchorable)

        var standard: NSLayoutXAxisAnchor {
            switch self {
            case let .leading(view): view.leadingAnchor
            case let .trailing(view): view.trailingAnchor
            }
        }
    }

    let edge: Edge

    static func leading(_ view: Anchorable) -> Self {
        XAnchor(edge: .leading(view))
    }

    static func trailing(_ view: Anchorable) -> Self {
        XAnchor(edge: .trailing(view))
    }
}
