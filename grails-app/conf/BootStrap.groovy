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
        def jdoe = new User(
                loginName: "jdoe",
                password: "admin",
                phone: "***-****-****",
                creationDate: new Date(),
                lastUpdateDate:new Date()
        )
        jdoe.save()
        if (jdoe.hasErrors())
        {
            print(jdoe.errors)
        }
        def prj = new Project(
               user: admin,
                projectName: "json",
                description: "test",
                creationDate: new Date(),
                lastUpdateDate:new Date()
        )
        prj.save();
        if (prj.hasErrors()){
            print(prj.errors)
        }
        def prj2 = new Project(
                user: jdoe,
                projectName: "dadf",
                description: "test",
                creationDate: new Date(),
                lastUpdateDate:new Date()
        )
        prj2.save()
        if (prj2.hasErrors()){
            print(prj2.errors)
        }
    }
    def destroy = {
    }
}
