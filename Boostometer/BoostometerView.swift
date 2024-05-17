////
////  BoostometerView.swift
////  Boostometer
////
////  Created by Ada Jiang on 5/17/24.
////
//
//import SwiftUI
//
//struct BoostometerView: View {
//    var body: some View {
//        GeometryReader { geometry in
//            let rect = geometry.frame(in: .global)
//            let meter = Boostometer(rect: rect)
//            let paths = meter.textPaths
//
//            ZStack {
//                meter.outline
//                    .stroke(Layout.meterColor, lineWidth: 3)
//
//                ForEach(0..<6) { index in
//                    paths[index]
//                        .fill(colors[index])
//                }
//            }
//            .shadow(color: Layout.glowColor, radius: Layout.shadowRadius)
////            .keyframeAnimator(
////                initialValue: MeterValues(),
////                trigger: state == .boosting
////            ) { content, value in
////                content
////                    .opacity(state == .boosting ? value.opacity : 0)
////                    .rotationEffect(state == .boosting ? value.angle : Angle(degrees: -45), anchor: .bottom)
////            } keyframes: { _ in
////                KeyframeTrack(\.opacity) {
////                    LinearKeyframe(1, duration: Layout.meterOpacityDuration1)
////                }
////                KeyframeTrack(\.angle) {
////                    SpringKeyframe(
////                        .zero,
////                        duration: Layout.meterRotationDuration,
////                        spring: Spring(duration: 0.4, bounce: 0.6)
////                    )
////                }
////            }
//        }
//        .aspectRatio(1.3, contentMode: .fill)
//        .frame(width: 370, height: 161)
//        .onChange(of: state) { oldValue, newValue in
//            if newValue == .boosting {
//                timer = Timer.scheduledTimer(withTimeInterval: 0.33, repeats: true) { timer in
//                    withAnimation(.easeInOut(duration: 0.33)) {
//                        colors[colorStep] = Color.white
//                    }
//                    colorStep += 1
//                    if colorStep >= colors.count {
//                        timer.invalidate()
//                        colorStep = 0
//                    }
//                }
//            } else {
//                timer?.invalidate()
//                colorStep = 0
//
//                for i in 0..<colors.count {
//                    colors[i] = Layout.meterColor
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    BoostometerView()
//}
