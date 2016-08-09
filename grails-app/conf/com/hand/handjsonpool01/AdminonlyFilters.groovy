package com.hand.handjsonpool01

class AdminonlyFilters {

    def filters = {
        all(controller:'user', action:'edit|delete') {
            before = {
                if (session.user.loginName!="admin"){
                    redirect(controller: "user",action: "index")
                    return false;
                }
            }
        }
    }
}
