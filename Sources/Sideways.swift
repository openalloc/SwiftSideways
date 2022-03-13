//
//  Sideways.swift
//
// Copyright 2022 FlowAllocator LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import SwiftUI

public struct Sideways<Content: View>: View {
    private let minWidth: CGFloat
    private let showIndicators: Bool
    private let content: () -> Content
    
    public init(minWidth: CGFloat,
                showIndicators: Bool = false,
                @ViewBuilder content: @escaping () -> Content)
    {
        self.minWidth = minWidth
        self.showIndicators = showIndicators
        self.content = content
    }
    
//    @State private var contentWidth: CGFloat = 0
    
    public var body: some View {
        GeometryReader { geo in
            ScrollView(.horizontal, showsIndicators: showIndicators) {
                content()
                    .frame(minWidth: max(geo.size.width, minWidth))
//                    .background(
//                        GeometryReader { geoBG -> Color in
//                            DispatchQueue.main.async {
//                                contentWidth = geoBG.size.width
//                            }
//                            return Color.clear
//                        }
//                    )
            }
            //.frame(maxWidth: contentWidth)
            // NOTE no apparent need to restrict maxWidth
            //.frame(maxWidth: min(geo.size.width, contentWidth))
        }
    }
}

extension View {
    public func sideways(minWidth: CGFloat,
                         showIndicators: Bool = false) -> some View {
        Sideways(minWidth: minWidth,
                 showIndicators: showIndicators) {
            self
        }
    }
}
