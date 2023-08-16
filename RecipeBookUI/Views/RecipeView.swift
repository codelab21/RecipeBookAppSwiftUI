//
//  RecipeView.swift
//  RecipeBookUI
//
//  Created by Eymen on 16.08.2023.
//

import SwiftUI

struct RecipeView: View {
    @ObservedObject var recipeManager: RecipeManager
    var body: some View {
        NavigationView {
            ScrollView {
                HorizontalScrolling(recipeManager: recipeManager)
                    .padding(.vertical)
                
                VStack {
                    ForEach(recipeManager.recipes) { recipe in
                        RecipeCard(recipe: recipe)
                        
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
                .background(.ultraThickMaterial)
            }
            .background(.ultraThinMaterial)
            .navigationTitle("Recipes")
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipeManager: RecipeManager())
            .preferredColorScheme(.dark)
    }
}
