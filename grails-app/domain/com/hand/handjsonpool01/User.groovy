package com.hand.handjsonpool01

class User {
    Integer id
    String loginName
    String password
    String phone
    Date creationDate
    Date lastUpdateDate

    static constraints = {
        id (min:1)
        loginName(blank:false)
        password(password:true)
        phone()
        creationDate(min:new Date())
    }
}
