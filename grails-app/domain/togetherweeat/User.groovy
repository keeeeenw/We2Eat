package togetherweeat

class User {

    String username

    String firstName

    String lastName

    byte [] passwordHash
    Date dateCreated

    static hasMany = [
            membership:Membership,
            participant:Participant
    ]

    User(String username, String password, String firstName, String lastName) {
            this.username = username
            this.passwordHash = password.encodeAsMD5()
            this.lastName = lastName
            this.firstName = firstName
        }

    static constraints = {
        firstName nullable: true
        lastName nullable: true
    	username(blank: false, unique: true, size: 1..20, matches :"[a-zA-Z1-9_]+")
    	passwordHash(nullable: false, size: 32..32)
    }

    static mapping = {
    	autoTimestamp true
    }
}
