//
//  StyleExampleView.swift
//  SwiftUIStyleExamples
//
//  Created by Alexander Ostrovsky on 5/5/2025.
//


import SwiftUI

/// A view demonstrating SwiftUI coding style best practices
///
/// This example shows proper:
/// - View composition
/// - MARK comments
/// - Property organization
/// - Modifier usage
public struct StyleExampleView: View {
    // MARK: - Types
    
    /// Style configuration for different visual states
    public struct ViewStyle: Sendable, Equatable {
        public let activeColor: Color
        public let inactiveColor: Color
        public let fontSize: CGFloat
        
        public init(
            activeColor: Color,
            inactiveColor: Color,
            fontSize: CGFloat
        ) {
            self.activeColor = activeColor
            self.inactiveColor = inactiveColor
            self.fontSize = fontSize
        }
        
        public static let standard = ViewStyle(
            activeColor: .green,
            inactiveColor: .primary,
            fontSize: 16
        )
    }
    
    // MARK: - Properties
    
    // State properties grouped together
    @State private var isActive = false
    
    // Regular stored properties
    private let title: String
    private let style: ViewStyle
    
    // MARK: - Initialization
    
    /// Creates a new style example view
    /// - Parameters:
    ///   - title: The title to display
    ///   - style: Visual styling for the view
    public init(
        title: String = "Style Example",
        style: ViewStyle = .standard
    ) {
        self.title = title
        self.style = style
    }
    
    // MARK: - Body
    
    public var body: some View {
        VStack(spacing: 16) {
            headerView
            contentView
            actionButton
        }
        .padding()
        .animation(.easeInOut, value: isActive)
    }
    
    // MARK: - Components
    
    private var headerView: some View {
        Text(title)
            .font(.headline)
            .accessibilityAddTraits(.isHeader)
    }
    
    private var contentView: some View {
        Text("This demonstrates proper view structure")
            .font(.system(size: style.fontSize))
            .foregroundColor(isActive ? style.activeColor : style.inactiveColor)
    }
    
    private var actionButton: some View {
        Button {
            toggleActiveState()
        } label: {
            Text("Toggle State")
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
        }
        .buttonStyle(.bordered)
        .accessibilityHint("Toggles between active and inactive states")
    }
    
    // MARK: - Actions
    
    /// Toggles the active state of the view
    private func toggleActiveState() {
        isActive.toggle()
    }
}

// MARK: - Previews

#Preview("Default") {
    StyleExampleView()
}

#Preview("Custom Style") {
    StyleExampleView(
        title: "Custom Example",
        style: .init(
            activeColor: .blue,
            inactiveColor: .gray,
            fontSize: 18
        )
    )
}
