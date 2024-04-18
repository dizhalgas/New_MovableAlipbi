import SwiftUI

struct ActivityView: View {
    @State private var selectedCategory: String = "бәрі"
    let categories = ["бәрі", "жылдамдық", "қысым", "тұрақтылық"]
    let activities = [
        (title: "Тәтті бәліштер", category: "жылдамдық", date: "Aug 17, 2023"),
        (title: "Шарлар", category: "қысым", date: "Aug 16, 2023"),
        (title: "Cүңгуір қайық", category: "тұрақтылық", date: "Aug 15, 2023"),
        (title: "Cүңгуір қайық", category: "тұрақтылық", date: "Aug 13, 2023"),
        (title: "Шарлар", category: "қысым", date: "Aug 13, 2023"),
        (title: "Тәтті бәліштер", category: "жылдамдық", date: "Aug 17, 2023")
    ]
    
    var filteredActivities: [(title: String, category: String, date: String)] {
        if selectedCategory == "бәрі" {
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
        .environment(\.font, Font.custom("Poppins", size: 14))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
