package com.hand.handjsonpool01

class AdminonlyFilters {

        def filters = {
            all(controller: 'user|project|json', action: 'show|index|delete|edit|update') {
                before = {
                    if (!session?.user){
                        flash.message="please login"
                        redirect(controller: "user",action: "login")
                        return false;
                    }
                }

            }
            /*admindelete(controller: "user",action: "delete"){
                before={
                    if (session.user.loginName != "admin"){
                        return false;
                    }
                }
            }*/
        }


}
