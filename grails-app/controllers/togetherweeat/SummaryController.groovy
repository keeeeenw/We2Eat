package togetherweeat

class SummaryController {

    def beforeInterceptor = [action: this.&auth]

    private auth() {
        if (!session.user) {
            redirect(controller: "user", action: "login")
            return false
        }
    }

    def show() {
        User u = User.get(session.user)
        render(view: "show", model: [user:u])
    }

    def index() {

    }

    def someFunction() {
        Meal meal = Meal.get(session.meal)
        double sum = 0;
        for(item in meal.getCourse()) {
            sum = sum + item.dish.cost
        }
        render(view: "summary", model: [meal: meal, sum: sum])
    }
}
