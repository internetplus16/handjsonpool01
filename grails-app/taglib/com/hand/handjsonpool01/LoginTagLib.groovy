package com.hand.handjsonpool01

class LoginTagLib {
//    static defaultEncodeAs = [taglib: 'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    def loginControl = {
        if (request.getSession(false)&&session.user){
            out<<"hello ${session.user.loginName}"
            out<<"""${link(action: "logout",controller: "user"){"Logout"}}"""
        }else {
            out<<"""${link(action: "login",controller: "user"){"Login"}}"""
            out<<"""${link(action: "create",controller: "user"){"Register"}}"""
        }
    }
}
