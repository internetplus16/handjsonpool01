import com.hand.handjsonpool01.Json
import com.hand.handjsonpool01.Project
import com.hand.handjsonpool01.User

class BootStrap {

    def init = { servletContext ->
        def admin = new User(
                loginName: "admin",
                password: "admin",
                phone: "XXX-XXXX-XXXX",
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
                phone: "XXX-XXXX-XXXX",
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
                projectName: "test",
                description: "test",
                creationDate: new Date(),
                lastUpdateDate:new Date()
        )
        prj2.save()
        if (prj2.hasErrors()){
            print(prj2.errors)
        }

        def jso = new Json(
                project : prj2,
                placeholderUrl:"http://localhost:8080/handjsonpool01/json/test/jdoe/1",
                method : "Posts",
//                JsonData : "{\"User\":\"jdoe\",\"Project\":\"test\",\"Method\":\"Posts\"}",
                jsonData : "{\"User\":\"jdoe\",\"Project\":\"test\",\"Method\":\"Posts\"}",
                dateCreated:new Date(),
                lastUpdated:new Date()
        )
        jso.save()
        if (jso.hasErrors()){
            print(jso.errors)
        }
    }
    def destroy = {
    }
}
