//
//  RecipeCardView.swift
//  Avacados
//
//  Created by NaheedPK on 06/05/2022.
//

import SwiftUI

struct RecipeCardView: View {
    var recipe: Recipe
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            
                            Image(systemName: "bookmark")
                                .font(.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.large)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 20, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            
            VStack(alignment: .leading, spacing: 12) {
                //MARK: - TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(11)
                //MARK: - HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                //MARK: - RATE
                HStack {
                    ForEach(1...(recipe.rating), id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.body)
                            .foregroundColor(.yellow)
                    }
                }
                //MARK: - COOKING
                
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center,spacing: 2) {
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    }
                    HStack(alignment: .center,spacing: 2) {
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    }
                    HStack(alignment: .center,spacing: 2) {
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    }
                }
                .font(.footnote)
                .foregroundColor(.gray)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: Recipe.allRecipes().first!)
            .previewLayout(.sizeThatFits)
    }
}
