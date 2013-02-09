package togetherweeat

class Preference {

    static belongsTo = [
            dish:Dish,
            user:User
    ]

    static constraints = {
    }
}
