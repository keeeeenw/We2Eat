import togetherweeat.*

class BootStrap {

    def init = { servletContext ->
        def u = new User("zwang","","Zixiao", "Wang")
        u.save(failOnError: true, flush: true)

        def frank = new User("forevermiao","miaomiao","Frank", "Grohl")

        frank.save(failOnError: true, flush: true)

        Date date = new Date(1360584000000)
        def meal = new Meal(date, 10, "1600 Grand Avenue", "Chinese Food")

        meal.save(failOnError: true, flush: true)

        def participant = new Participant(true,true,"chief")

        participant.setUser(frank)
        participant.setMeal(meal)

        participant.save(failOnError: true, flush: true)

        def kungPao = new Dish("Kung Pao Chicken", "Spicy", "Chinese",
                "chicken breasts, soy sauce, cornstarch, chile paste, brown suger, white vinegar, garlic, peanuts",
        "fry and stir", "N/A", "A sample recipe", 10.00)

        kungPao.save(failOnError: true);

        def course = new Course()
        course.setMeal(meal)
        course.setDish(kungPao)

        course.save(failOnError: true, flush: true)

        def pref = new Preference()
        pref.setDish(kungPao)
        pref.setUser(frank)
        pref.isCook = true

        pref.save(failOnError: true, flush: true)



    }
    def destroy = {
    }
}
