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
        loginName(blank:false,unique: true)
        password(password:true)
        phone()
        creationDate()
        lastUpdateDate()
        project()
    }
    def beforeInsert={
        password=password.encodeAsSHA();
    }
    static hasMany=[project:Project]
        String toString(){
        return "${loginName}"
    }
    static mappings = {
        "/index/"(view:"/index")

    }
}
