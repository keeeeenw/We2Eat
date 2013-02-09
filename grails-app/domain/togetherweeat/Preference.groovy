package togetherweeat

class Preference {

    boolean isCook = false
    boolean isEat = false


    static belongsTo = [
            dish:Dish,
            user:User
    ]

    static constraints = {

    }
}
