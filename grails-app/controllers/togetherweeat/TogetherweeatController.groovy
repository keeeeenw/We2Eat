package togetherweeat

class TogetherweeatController {

    def beforeInterceptor = [action: this.&auth]

    private auth() {
        if (!session.user) {
            redirect(controller: "user", action: "login")
            return false
        }
    }

    def show() {
        User u = User.get(session.user)
        render(view: "show", model: [user: u])
    }

    def createChefProfile() {
        render(view: "createChefProfile")
    }

    def createEaterProfile() {
        def meals = Meal.all
        render(view: "createEaterProfile", model: [meals:meals])
    }

    def submitEaterProfile(){

    }

    def submitChefProfile() {
        def meal = new Meal()
        meal.setDate(params.date)
        meal.setNumOfPeople(params.nopeople.toInteger())
        meal.setLocation(params.location)
        meal.setTheme(params.theme)

        def orgName = params.organization
        def org = Organization.findByName(orgName)

        if (org != null) {
            print("Organization Exists")
        } else {
            org = new Organization()
            org.setName(orgName)
        }

        org.save(failOnError: true, flash: true)

        meal.setOrganization(org)

        meal.save(failOnError: true, flash: true)

        session.meal = meal.id;

        def chef = new Participant()
        if (params.host == 1) {
            chef.setHost(true)
        } else {
            chef.setHost(false)
        }
        chef.setRole("chef")
        chef.setIsPaid(true)
        chef.setMeal(meal)

        User u = User.get(session.user)

        chef.setUser(u)

        chef.save(failOnError: true, flash: true)

        render(view: "../dish/dish", model: [meal: meal])

    }

    def index() {
        render(view: "show")
    }
}
