package com.hand.handjsonpool01


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProjectController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        respond Project.list(params), model: [projectInstanceCount: Project.count()]
       /* def projectInstance = Project.list(params);
        if (session.user.loginName==projectInstance.user.loginName||session.user.loginName == "admin"){
            respond projectInstance
        }*/
    }

    def show(Project projectInstance) {
        /*if (session.user.loginName==projectInstance.user.loginName||session.user.loginName == "admin"){
            respond projectInstance
        }else {
            redirect(action: "index")
        }*/

        respond projectInstance
    }

    def create() {
        respond new Project(params)
    }
   /* def beforeInterceptor =[action: this.&auth,except:['login','logout','create','index','show']]
    def auth(){
        def name ="${request.getAttribute("user").loginName}"
        if (session.user.loginName!=name){
            redirect(controller: "project",action: "index")
        }
    }*/
    @Transactional
    def save(Project projectInstance) {
        if (projectInstance == null) {
            notFound()
            return
        }

        if (projectInstance.hasErrors()) {
            respond projectInstance.errors, view: 'create'
            return
        }

        projectInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'project.label', default: 'Project'), projectInstance.id])
                redirect projectInstance
            }
            '*' { respond projectInstance, [status: CREATED] }
        }
    }

    def edit(Project projectInstance) {
        if (session.user.loginName==projectInstance.user.loginName||session.user.loginName == "admin"){
            respond projectInstance
        }else {
            redirect(action: "index")
        }
    }

    @Transactional
    def update(Project projectInstance) {
        if (projectInstance == null) {
            notFound()
            return
        }

        if (projectInstance.hasErrors()) {
            respond projectInstance.errors, view: 'edit'
            return
        }

        projectInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Project.label', default: 'Project'), projectInstance.id])
                redirect projectInstance
            }
            '*' { respond projectInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Project projectInstance) {

        if (projectInstance == null) {
            notFound()
            return
        }

        projectInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Project.label', default: 'Project'), projectInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
