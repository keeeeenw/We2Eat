package togetherweeat

class Membership {

    static belongsTo = [
            user:User,
            organization:Organization
    ]

    static constraints = {
    }
}
