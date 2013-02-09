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

    Participant(boolean host, boolean isPaid, String role){
        this.host = host
        this.isPaid = isPaid
        this.role = role
    }

    String isHosted(){
        if (this.host) {
            return "YES"
        } else {
            return "NO"
        }
    }
}
