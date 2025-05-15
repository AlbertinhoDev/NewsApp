import SwiftUI

struct TitleView: View {
    //MARK: - Properties
    let article: Article
    
    //MARK: - Body
    var body: some View {
        Text(article.title)
            .titleFont()
    }
}
