import SwiftUI
import RemoteImage

struct MealCell: View {
    var meal: Meal

    var body: some View {
        HStack {
            MealImage(imageURL: meal.image)
            VStack(alignment: .leading) {
                Text(meal.category)
                    .font(Font.caption.smallCaps())
                    .foregroundColor(.gray)

                Text(meal.name)
                    .lineLimit(3)
                    .padding(.top, 1)

                HStack {
                    PriceLabel(price: meal.prices?.students)
                    PriceLabel(price: meal.prices?.employees)
                }
            }
        }
    }
}

struct MealCell_Previews: PreviewProvider {
    static var previews: some View {
        MealCell(meal: Meal(id: 1,
                            name: "Rindfleischpfanne mit Möhre, Ananas, Mango und Kokosmilch, dazu Mie Nudeln",
                            notes: [""],
                            prices: Meal.Prices(students: 2.9, employees: 4.7),
                            category: "Wok & Grill",
                            image: URL(string: "https://bilderspeiseplan.studentenwerk-dresden.de/m18/201909/233593.jpg")!,
                            url: URL(string: "https://studentenwerk-dresden.de")!))
    }
}
