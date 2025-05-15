import SwiftUI

struct GradientImageView: View {
    //MARK: - Body
    var body: some View {
        GeometryReader { _ in
            LinearGradient(
                colors: [Color(UIColor.systemBackground), .clear],
                startPoint: .bottom,
                endPoint: .top)
        }
        .frame(height: SizeConstants.screenHeight / 4)
        .offset(y: -SizeConstants.screenHeight / 4)
    }
}
