package togetherweeat

class Organization {

    String name

    static hasMany = [
            membership:Membership,
            meal:Meal
    ]

    static constraints = {
    }
}
