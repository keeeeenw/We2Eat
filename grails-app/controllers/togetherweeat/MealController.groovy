package togetherweeat

class MealController {

    def joinMeal(){
        Meal meal = Meal.get(params.mealid)
        print(meal.numOfPeople)
        render(view: "joinMeal")
    }
}
