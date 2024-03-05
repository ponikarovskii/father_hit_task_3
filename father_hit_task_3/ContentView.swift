//
//  ContentView.swift
//  father_hit_task_3
//
//  Created by Антон Поникаровский on 05.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button {
                withAnimation(.snappy(duration: 0.3, extraBounce: 0.3)) {
                    isAnimated.toggle()
                } completion: {
                    isAnimated.toggle()
                }
            } label: {
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "arrowtriangle.forward.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: isAnimated ? 50 : 0)
                        .opacity(isAnimated ? 1 : 0)
                    Image(systemName: "arrowtriangle.forward.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Image(systemName: "arrowtriangle.forward.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: isAnimated ? 0 : 50)
                        .opacity(isAnimated ? 0 : 1)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
