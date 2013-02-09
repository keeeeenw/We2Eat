import togetherweeat.User

class BootStrap {

    def init = { servletContext ->
        def u = new User("zwang","","Zixiao", "Wang")
        u.save(flush: true)
    }
    def destroy = {
    }
}
