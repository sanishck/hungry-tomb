import Foundation

class CategoryModelView: ObservableObject {
    @Published var categories = [Category]()
    @Published var nameSort = SortBy.nameASC
    
    init() {
        DispatchQueue.main.async {
            self.fetchMessages { [weak self] dat in
                debugPrint(dat)
                self?.categories = dat
            }
        }
    }

    func fetchMessages(completion: @escaping ([Category]) -> Void) {
        guard let url = URL(string: AppConstant.baseUrl) else { return }
        debugPrint(url)
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return }
            debugPrint(data)
            if let messages = try? JSONDecoder().decode([Category].self, from: data) {
                debugPrint(messages)
                completion(messages)
                return
            }
            completion([])
        }.resume()
    }
    
    func sortList(by sortType: SortBy) {
        switch sortType {
        case .nameASC:
            categories.sort {
                $0.item.lowercased() < $1.item.lowercased()
            }
        case .nameDESC:
            categories.sort {
                $0.item.lowercased() > $1.item.lowercased()
            }
        }
    }
    
    enum SortBy: String {
        case nameASC = "Name △"
        case nameDESC = "Name ▽"
    }
}
