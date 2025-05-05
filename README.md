# SwiftUI Style Guide

A comprehensive personal reference for SwiftUI coding standards and best practices. This repository serves as both documentation and a practical resource for maintaining consistent, high-quality SwiftUI code.

## 🎯 Purpose

This style guide documents my personal coding conventions for SwiftUI development, provides practical examples of implementation, and serves as a reference to challenge myself with best practices. It follows Apple's recommendations while making deliberate choices where Apple's guidance is inconsistent.

## 📦 SwiftUIStyleExamples Package

The Swift package included in this repository serves several important purposes:

- **Living Code Reference**: Provides compilable, working examples of all style guide principles in practice
- **Pattern Demonstration**: Shows how to implement MVVM architecture, view composition, and other design patterns correctly
- **Best Practices Showcase**: Illustrates proper naming conventions, file organization, and code structure
- **Documentation Source**: Serves as the basis for DocC-generated documentation with annotations
- **Self-Testing**: Includes tests to validate that examples work as expected
- **Project Template**: Can be used as a reference when starting new projects to ensure consistency

The package demonstrates concepts like:
- Proper view extraction and composition
- Consistent modifier ordering
- Effective use of property wrappers
- Clean MVVM implementation
- Accessibility best practices

## 📚 Documentation

The guide is structured in multiple formats to provide both reference documentation and practical examples:

### Markdown Documentation

Complete style guide documentation is available in the `/Documentation` directory:

- [Coding Standards](Documentation/coding-standards.md) - Core naming, structure, and formatting conventions
- [Architecture](Documentation/architecture.md) - MVVM pattern and design principles
- [Best Practices](Documentation/best-practices.md) - Performance, accessibility, and error handling

### DocC Documentation

Interactive documentation with code examples is available in the SwiftUIStyleExamples Swift package:

```bash
# Generate and open DocC documentation
cd SwiftUIStyleExamples
swift package generate-documentation
open .build/plugins/Swift-DocC/SwiftUIStyleExamples/documentation/swiftuistyleexamples/index.html
```

## 💻 Interactive Examples

### Playgrounds

The `/Playgrounds` directory contains interactive Swift Playgrounds demonstrating key concepts:

- **ViewStructure.playground** - Examples of well-structured views and components
- **MVVMExample.playground** - Implementation of the MVVM pattern in SwiftUI
- **ModifierExamples.playground** - Custom and standard modifier usage patterns

### Template Project

The `/Templates/SwiftUIStarter` directory provides a starter project template that follows all the style guide conventions, ready to use as a foundation for new projects.

## 🚀 Getting Started

1. Clone this repository
2. Explore the Markdown documentation in `/Documentation`
3. Open the playgrounds in Xcode to see live code examples
4. Build the SwiftUIStyleExamples package to see working implementations
5. Generate the DocC documentation for comprehensive reference

## 📋 Key Conventions

Some of the core conventions in this guide include:

- Suffix view types with "View" (e.g., `ProfileView`)
- Group property wrappers by type (@State, @Binding, etc.)
- Extract complex view hierarchies into separate views
- Follow MVVM architecture pattern
- Create custom modifiers for reusable styling
- Chain modifiers vertically for better readability

## 🔄 Updates

This is a living document that evolves with my experience and as SwiftUI itself evolves. I'll update it as new best practices emerge and as I refine my own coding style.

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.
