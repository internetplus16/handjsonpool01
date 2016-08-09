package com.hand.handjsonpool01

class CreateFilters {

    def filters = {
        all(controller: 'project', action: 'save') {
            before = {
                if (params.user.loginName != session.user.loginName&&session.user.loginName!="admin"){
                    flash.message="sorry,you can't create others"
                    redirect(action: "index")
                    return false;
                }
            }

        }
    }
}
