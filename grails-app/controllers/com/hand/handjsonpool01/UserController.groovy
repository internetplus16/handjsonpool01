package com.hand.handjsonpool01


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 2, 100)
        respond User.list(params), model: [userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        /*if (session.user.loginName==userInstance.loginName||session.user.loginName == "admin"){
            respond userInstance
        }else {
            redirect(action: "index")
        }
//        respond userInstance
        }*/
        respond userInstance

    }

    def create() {
        respond new User(params)
    }
    def login ={
    }
    def logout = {
        session.user = null
        redirect(action: "login")
    }
    def authenticate = {
        def user = User.findByLoginNameAndPassword(
                params.loginName,params.password.encodeAsSHA());
        if(user){
            session.user = user;
            flash.message = "Hello ${user.loginName}!";
            redirect(uri: "http://localhost:8080/handjsonpool01")
        }else{
            flash.message = "Sorry,please try again!"
            redirect(action:"login");
        }
    }
    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'create'
            return
        }

        userInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'edit'
            return
        }
        userInstance.password=userInstance.password.encodeAsSHA()
        userInstance.save flush: true;

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                session.user = null;
                redirect action: "login"
            }
            '*' { respond userInstance, [status: OK] }
        }

    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
