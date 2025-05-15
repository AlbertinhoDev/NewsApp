import SwiftUI

struct HomeView: View {
    //MARK: - Properties
    @StateObject var viewModel = ViewModel()
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //MARK: - Bottom News
                TitleNewsView(title: "Top News")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(viewModel.topNews, id: \.url) { article in
                            NavigationLink(destination: DetailView(article: article)) {
                                TopArticleView(article: article)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal)
                }
                .shadow(color: .black.opacity(0.2), radius: 8, x: 5, y: 8)
                
                //MARK: - Bottom News
                TitleNewsView(title: "Bottom News")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(viewModel.bottomNews, id: \.url) { article in
                            NavigationLink(destination: DetailView(article: article)) {
                                BottomArticleView(article: article)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal)
                }
                .shadow(color: .black.opacity(0.2), radius: 8, x: 5, y: 8)
            }
            .background(.secondary.opacity(0.3))
            .refreshable {
                viewModel.fetchTopNews()
                viewModel.fetchBottomNews()
            }
        }
    }
    
    //MARK: - Methods
}

#Preview {
    HomeView()
}
