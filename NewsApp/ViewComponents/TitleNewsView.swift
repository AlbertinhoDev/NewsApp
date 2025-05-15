import SwiftUI

struct TitleNewsView: View {
    //MARK: - Properties
    let title: String
    
    //MARK: - Body
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            .padding(.top)
    }
}
