// ViewStyleTests.swift
// SwiftUIStyleExamples
//
// Created by Alexander Ostrovsky on 5/5/2025.
//

import XCTest
import SwiftUI
@testable import SwiftUIStyleExamples

final class ViewStyleTests: XCTestCase {
    func testInitialization() {
        let activeColor: Color = .red
        let inactiveColor: Color = .blue
        let fontSize: CGFloat = 16
        
        let style = StyleExampleView.ViewStyle(
            activeColor: activeColor,
            inactiveColor: inactiveColor,
            fontSize: fontSize
        )
        
        XCTAssertEqual(style.activeColor, activeColor)
        XCTAssertEqual(style.inactiveColor, inactiveColor)
        XCTAssertEqual(style.fontSize, fontSize)
    }
    
    func testStandardStyle() {
        let standardStyle = StyleExampleView.ViewStyle.standard
        
        XCTAssertEqual(standardStyle.activeColor, .green)
        XCTAssertEqual(standardStyle.inactiveColor, .primary)
        XCTAssertEqual(standardStyle.fontSize, 16)
    }
    
    func testEquality() {
        let style1 = StyleExampleView.ViewStyle(
            activeColor: .red,
            inactiveColor: .blue,
            fontSize: 16
        )
        
        let style2 = StyleExampleView.ViewStyle(
            activeColor: .red,
            inactiveColor: .blue,
            fontSize: 16
        )
        
        let style3 = StyleExampleView.ViewStyle(
            activeColor: .green,
            inactiveColor: .blue,
            fontSize: 16
        )
        
        XCTAssertEqual(style1, style2)
        XCTAssertNotEqual(style1, style3)
    }
}
