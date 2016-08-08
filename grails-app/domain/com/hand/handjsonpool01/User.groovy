package com.hand.handjsonpool01

class User {
    int id
    String loginName
    String password
    String phone
    Date creationDate
    Date lastUpdateDate

    static constraints = {
        id ()
        loginName(blank:false)
        password(password:true)
        phone()
        creationDate()
        lastUpdateDate()
        project()
    }
    static hasMany=[project:Project]
        String toString(){
        return "${loginName},${creationDate}"
    }
    static mappings = {
        "/index/"(view:"/index")
    }
}
