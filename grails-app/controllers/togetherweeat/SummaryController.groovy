package togetherweeat

class SummaryController {

    def index() {}

    def someFunction() {

        Meal meal = Meal.get(session.meal)

        String clear = "No";

        int sumPaid = 0;
        for (item in meal.getParticipant()){
             if(item.isPaid){
                 sumPaid = sumPaid + 1;
             }else{
                 sumPaid = sumPaid;
             }
        }

        double sumCost = 1;
        for (item in meal.getCourse()) {
            sumCost = sumCost + item.dish.cost
        };

        if ((meal.numOfPeople - 2) >= sumPaid) {
            clear = "No";
        } else {
            clear = "Yes";
        };

        render(view: "summary", model: [meal: meal, sumPaid: sumPaid, sumCost: sumCost, clear: clear])
    }

    def closeMeal() {
        Meal meal = Meal.get(session.meal)
        meal.setOpen(false);
        meal.save(failOnError: true, flash: true)

        redirect(controller: "Togetherweeat", action: "show")
    }


}
