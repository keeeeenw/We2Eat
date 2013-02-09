package togetherweeat

class Participant {

    boolean host
    boolean isPaid
    String role

    static belongsTo = [
            meal:Meal,
            user:User
    ]

    static constraints = {
    }
}
