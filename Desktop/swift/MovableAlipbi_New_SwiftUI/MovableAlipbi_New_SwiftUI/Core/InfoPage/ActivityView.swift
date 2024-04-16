import SwiftUI

struct ActivityView: View {
    @State private var selectedCategory: String = "all"
    let categories = ["all", "жылдамдық", "градус", "қысым", "тұрақтылық"]
    let activities = [
        (title: "Гляделки", category: "жылдамдық", date: "Aug 17, 2023"),
        (title: "Часики", category: "қысылм", date: "Aug 16, 2023"),
        (title: "Гляделки", category: "тұрақтылық", date: "Aug 15, 2023"),
        (title: "Репка", category: "градус", date: "Aug 13, 2023"),
        (title: "Репка", category: "қысым", date: "Aug 13, 2023"),
        (title: "Паучок", category: "жылдамдық", date: "Aug 17, 2023")
    ]
    
    var filteredActivities: [(title: String, category: String, date: String)] {
        if selectedCategory == "all" {
            return activities
        } else {
            return activities.filter { $0.category == selectedCategory }
        }
    }


    var body: some View {
        VStack(alignment: .leading) {
            // Title
            Text("Ойындар")
                .font(.title)
                .bold()
            
            // Custom Segmented Control
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categories, id: \.self) { category in
                        Button(action: {
                            self.selectedCategory = category
                        }) {
                            Text(category)
                                .foregroundColor(selectedCategory == category ? .white : Color(hex: 0x8B16FF))
                                .padding(.vertical, 8)
                                .padding(.horizontal, 12)
                                .background(selectedCategory == category ? Color(hex: 0x8fb108) : Color.clear)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal)
            }

            // List of activities
            
            List(filteredActivities, id: \.title) { activity in
                HStack {
                    Text(activity.title)
                    Spacer()
                    Text(activity.category)
                        .foregroundColor(Color(hex: 0x8B16FF))
                    Spacer()
                    Text(activity.date)
                        .foregroundColor(Color.gray)
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
        .padding()
        .environment(\.font, Font.custom("Poppins", size: 12))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
