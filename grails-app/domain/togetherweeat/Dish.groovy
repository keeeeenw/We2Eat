package togetherweeat

class Dish {

    String name
    String flavor
    String type
    String material
    String cooking_method
    String alert
    String recipe
    double cost

    static hasMany = [
            course:Course,
            perference:Preference
    ]

    static constraints = {
        course nullable: true;
        perference nullable: true;
    }

    Dish(String name, String flavor, String type, String material, String cooking_method, String alert, String recipe, double cost){
        this.name = name
        this.flavor = flavor
        this.material = material
        this.cooking_method = cooking_method
        this.alert = alert
        this.recipe = recipe
        this.cost = cost
        this.type = type
    }
}
