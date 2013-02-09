package togetherweeat

class DishController {

    def beforeInterceptor = [action: this.&auth]

    private auth() {
        if (!session.user) {
            redirect(controller: "user", action: "login")
            return false
        }
    }

    def index(){
        redirect(action: "show")
    }

    def show() {
        User u = User.get(session.user)
        render(view: "show", model: [user:u])
    }

    def submitDishInfo() {

        def dish = new Dish()
        dish.setName(params.name)
        dish.setFlavor(params.flavor)
        dish.setType(params.type)
        dish.setMaterial(params.material)
        dish.setCooking_method(params.method)
        dish.setAlert(params.alert)
        dish.setRecipe(params.recipe)
        dish.setCost(params.cost.toDouble())
        dish.save(failOnError: true, flash: true)

        Meal meal = Meal.get(session.meal)

        def course = new Course();
        course.setMeal(meal);
        course.setDish(dish);
        dish.save(failOnError: true, flash: true)
        meal.save(failOnError: true, flash: true)
        course.save(failOnError: true, flash: true)

        print(meal.course.size())

        render(view: "dish", model:[meal:meal]);
    }

    def submitdishes(){
        redirect(controller: "Summary", action: "someFunction")
    }
}
