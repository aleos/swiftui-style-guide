import SwiftUI

/// A view demonstrating SwiftUI coding style best practices
public struct StyleExampleView: View {
    // MARK: - Properties

    @State private var isActive = false

    // MARK: - Body

    public var body: some View {
        VStack(spacing: 16) {
            headerView
            contentView
            actionButton
        }
        .padding()
    }

    // MARK: - Components

    private var headerView: some View {
        Text("Style Example")
            .font(.headline)
    }

    private var contentView: some View {
        Text("This demonstrates proper view structure")
            .foregroundColor(isActive ? .green : .primary)
    }

    private var actionButton: some View {
        Button("Toggle State") {
            isActive.toggle()
        }
        .buttonStyle(.bordered)
    }
}
