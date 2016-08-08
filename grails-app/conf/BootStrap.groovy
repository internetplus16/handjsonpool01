import com.hand.handjsonpool01.*;
class BootStrap {

    def init = { servletContext ->
        def admin = new User(
                loginName: "admin",
                password: "admin",
                phone: "***-****-****",
               creationDate: new Date(),
              lastUpdateDate:new Date()
//                id()
        )
        admin.save()
        if (admin.hasErrors())
        {
            print(admin.errors)
        }
    }
    def destroy = {
    }
}
