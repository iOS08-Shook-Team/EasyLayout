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

public struct EasyConstraint {
    let baseView: Anchorable

    init(_ baseView: Anchorable) {
        self.baseView = baseView
        guard let view = baseView as? UIView else { return }
        view.translatesAutoresizingMaskIntoConstraints = false
    }

    // MARK: About Size

    @discardableResult
    public func width(_ width: CGFloat) -> Self {
        baseView.widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }

    @discardableResult
    public func width(min width: CGFloat) -> Self {
        baseView.widthAnchor.constraint(greaterThanOrEqualToConstant: width).isActive = true
        return self
    }

    @discardableResult
    public func width(max width: CGFloat) -> Self {
        baseView.widthAnchor.constraint(lessThanOrEqualToConstant: width).isActive = true
        return self
    }

    @discardableResult
    public func height(_ height: CGFloat) -> Self {
        baseView.heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }

    @discardableResult
    public func height(min height: CGFloat) -> Self {
        baseView.heightAnchor.constraint(greaterThanOrEqualToConstant: height).isActive = true
        return self
    }

    @discardableResult
    public func height(max height: CGFloat) -> Self {
        baseView.heightAnchor.constraint(lessThanOrEqualToConstant: height).isActive = true
        return self
    }

    @discardableResult
    public func size(with size: CGFloat) -> Self {
        width(size).height(size)
    }

    // MARK: About Position

    @discardableResult
    public func top(to anchor: YAnchor, offset: CGFloat = 0) -> Self {
        baseView.topAnchor.constraint(
            equalTo: anchor.edge.standard,
            constant: offset
        ).isActive = true
        return self
    }

    @discardableResult
    public func top(to view: Anchorable, offset: CGFloat = 0) -> Self {
        top(to: .top(view), offset: offset)
    }

    @discardableResult
    public func bottom(to anchor: YAnchor, offset: CGFloat = 0) -> Self {
        baseView.bottomAnchor.constraint(
            equalTo: anchor.edge.standard,
            constant: offset
        ).isActive = true
        return self
    }

    @discardableResult
    public func bottom(to view: Anchorable, offset: CGFloat = 0) -> Self {
        bottom(to: .bottom(view), offset: offset)
    }

    @discardableResult
    public func leading(to anchor: XAnchor, offset: CGFloat = 0) -> Self {
        baseView.leadingAnchor.constraint(
            equalTo: anchor.edge.standard,
            constant: offset
        ).isActive = true
        return self
    }

    @discardableResult
    public func leading(to view: Anchorable, offset: CGFloat = 0) -> Self {
        leading(to: .leading(view), offset: offset)
    }

    @discardableResult
    public func trailing(to anchor: XAnchor, offset: CGFloat = 0) -> Self {
        baseView.trailingAnchor.constraint(
            equalTo: anchor.edge.standard,
            constant: offset
        ).isActive = true
        return self
    }

    @discardableResult
    public func trailing(to view: Anchorable, offset: CGFloat = 0) -> Self {
        trailing(to: .trailing(view), offset: offset)
    }

    @discardableResult
    public func horizontal(to view: Anchorable, padding: CGFloat = 0.0) -> Self {
        leading(to: .leading(view), offset: padding)
            .trailing(to: .trailing(view), offset: padding * -1)
    }

    @discardableResult
    public func vertical(to view: Anchorable, padding: CGFloat = 0.0) -> Self {
        top(to: .top(view), offset: padding)
            .bottom(to: .bottom(view), offset: padding * -1)
    }

    @discardableResult
    public func diagonal(to view: Anchorable, padding: CGFloat = 0.0) -> Self {
        horizontal(to: view, padding: padding)
            .vertical(to: view, padding: padding)
    }

    // MARK: About Center

    @discardableResult
    public func centerX(to view: Anchorable) -> Self {
        baseView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        return self
    }

    @discardableResult
    public func centerY(to view: Anchorable) -> Self {
        baseView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return self
    }

    @discardableResult
    public func center(to view: Anchorable) -> Self {
        centerX(to: view).centerY(to: view)
    }
}
