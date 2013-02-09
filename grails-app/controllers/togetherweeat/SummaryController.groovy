package togetherweeat

class SummaryController {

    def index() {}

    def someFunction() {
        Meal meal = Meal.get(session.meal)
        double sum = 0;
        for(item in meal.getCourse()) {
            sum = sum + item.dish.cost
        }
        render(view: "summary", model: [meal: meal, sum: sum])
    }
}
