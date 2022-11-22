//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Samuel Sum on 2022-11-21.
//

import SwiftUI

struct ContentView: View {
    var recipes = [RecipeModel]()
    var body: some View {
        VStack{
            List(recipes, id: \.self) { recipe  in
                VStack(alignment: .leading) {
                    Text("\(recipe.name)")
                        .font(.headline)
                        .foregroundColor(Color.blue)
                        .bold()
                    Text("\(recipe.origin)")
                        .font(.subheadline)
                        .foregroundColor(Color.purple)
                        .italic()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipes: ContentPreviewHelper.mockRecipes())
    }
}

struct ContentPreviewHelper {
    static func mockRecipes() -> [RecipeModel] {
        var recipes = [RecipeModel]()
        recipes.append(RecipeModel(id: UUID(),
            name: "Italian Pizza Chicken", origin: "Italian"))
        recipes.append(RecipeModel(id: UUID(),
            name: "Greek Pasta Bake", origin: "Greek"))
        recipes.append(RecipeModel(id: UUID(),
            name: "Hearty Parsnip Soup", origin: "British"))
        recipes.append(RecipeModel(id: UUID(),
            name: "Honey & Soy Salmon", origin: "Chinese"))
        return recipes
    }
}
