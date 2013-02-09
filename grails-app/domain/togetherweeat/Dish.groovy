package togetherweeat

class Dish {

    String name
    String flavor
    String type
    String material
    String cooking_method
    String alert
    String Recipe
    Double cost

    static hasMany = [
            course:Course,
            perference:Preference
    ]

    static constraints = {
        course nullable: true;
        perference nullable: true;
    }
}
