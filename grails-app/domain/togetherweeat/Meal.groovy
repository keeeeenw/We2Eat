package togetherweeat

class Meal {

    Date date

    int numOfPeople

    String location

    String theme

    double price

    double estPrice

    boolean open = true;

    static hasOne = [
            organization: Organization
    ]

    static hasMany = [
            course: Course,
            participant: Participant
    ]

    static constraints = {
        location nullable: true;
        organization nullable: true;
        price nullable: true;
        estPrice nullable: true;
    }

    Meal(Date date, int numOfPeople, String location, String theme) {
        this.date = date
        this.numOfPeople = numOfPeople
        this.location = location
        this.theme = theme
    }

    Meal(Date date, int numOfPeople, String location, String theme, Course course, Participant participant) {
        this.date = date
        this.numOfPeople = numOfPeople
        this.location = location
        this.theme = theme
        this.course = course
        this.participant = participant
    }
}
