import SwiftUI

struct DetailView: View {
    //MARK: - Properties
    let article: Article
    let spacing: CGFloat = 20
    
    //MARK: - Body
    var body: some View {
        ZStack(alignment: .topLeading) {
            ScrollView(.vertical, showsIndicators: false) {
                MainImageView(article: article)
                
                VStack(alignment: .leading, spacing: spacing) {
                    TitleView(article: article)
                    DescriptionView(article: article)
                    DateView(article: article)
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background)
                .background(GradientImageView())
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
            
            BackButtonView()
                .padding(.leading)
        }
    }
}

#Preview {
    DetailView(
        article: Article(
            title: "Title",
            description: "Description",
            url: "URL",
            urlToImage: "https://picsum.photos/200",
            publishedAt: Date()
        )
    )
}
