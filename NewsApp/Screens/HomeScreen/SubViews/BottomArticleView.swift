import SwiftUI

struct BottomArticleView: View {
    //MARK: - Properties
    let article: Article
    
    //MARK: - Body
    var body: some View {
        VStack {
            AsyncImageView(
                article: article,
                imageHeight: 120,
                imageWidth: 120,
                placeholder: 120
            )
            
            VStack(alignment: .leading) {
                TitleView(article: article)
                Spacer()
                DateView(article: article)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}

