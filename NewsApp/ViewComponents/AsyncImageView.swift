import SwiftUI

struct AsyncImageView: View {
    //MARK: - Properties
    let article: Article
    let imageHeight: CGFloat
    let imageWidth: CGFloat
    let placeholder: CGFloat
    
    //MARK: - Body
    var body: some View {
        if let url = article.urlToImage, let imageURL = URL(string: url) {
            AsyncImage(url: imageURL) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidth, height: imageHeight)
                        .cornerRadius(10)
                } else {
                    ZStack {
                        defaultRectangle(placeholder: placeholder)
                        defaultImage()
                    }
                }
            }
        } else {
            ZStack {
                defaultRectangle(placeholder: placeholder)
                defaultImage()
            }
        }
    }
}

extension AsyncImageView {
    //MARK: - Methods
    private func defaultRectangle(placeholder: CGFloat) -> some View {
        return Rectangle()
            .frame(width: placeholder)
            .foregroundStyle(.secondary)
            .opacity(0.3)
            .cornerRadius(10)
    }
    
    private func defaultImage() -> some View {
        return Image(systemName: "photo")
            .resizable()
            .foregroundStyle(.secondary)
            .scaledToFit()
            .frame(height: 50)
    }
}
