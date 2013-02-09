package togetherweeat

class Dish {

    String name

    static hasMany = [
            course:Course,
            perference:Preference
    ]

    static constraints = {
    }
}
