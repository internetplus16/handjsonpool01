package com.hand.handjsonpool01


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class JsonController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def format(String jsd)
    {
        String fjsd=jsd.replace('}','/i')
        return fjsd
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Json.list(params), model: [jsonInstanceCount: Json.count()]
        def meth = ["1": "Posts", "2": "Delete", "3": "Put", "4": "Get"]//Get:�飬Posts:��,Put:��,Delete:ɾ
        for (j in Json.list(params)) {
            if ( j.project.user.toString()== params.user.toString()) {
                if (j.project.toString() == params.project.toString()) {
                    if (meth[params.method.toString()].toString() == j.method.toString()) {
//                        render(format(j.jsonData.toString()))
                        render(j.jsonData)
//                        render(session.getAttribute("user").toString()+" "+params.user.toString())
                    }
//                }
//            }
                    /*if(session.getAttribute("user").toString()==params.user.toString()||params.user.toString()=='admin'){
                render(session.getAttribute("user").toString()+" "+params.user.toString())
            }*/
                }
            }
        }
    }

    def show(Json jsonInstance) {
        respond jsonInstance
    }

    def create() {
        respond new Json(params)
    }

    @Transactional
    def save(Json jsonInstance) {
        if (jsonInstance == null) {
            notFound()
            return
        }

        if (jsonInstance.project.user.loginName != session.user.loginName&&session.user.loginName!="admin"){
            flash.message="sorry,you can't create others"
            redirect(action: "index")
            return false;

        }

        if (jsonInstance.hasErrors()) {
            respond jsonInstance.errors, view: 'create'
            return
        }

        jsonInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'json.label', default: 'Json'), jsonInstance.id])
                redirect jsonInstance
            }
            '*' { respond jsonInstance, [status: CREATED] }
        }
    }

    def edit(Json jsonInstance) {
        respond jsonInstance
    }

    @Transactional
    def update(Json jsonInstance) {
        if (jsonInstance == null) {
            notFound()
            return
        }

        if (jsonInstance.hasErrors()) {
            respond jsonInstance.errors, view: 'edit'
            return
        }

        jsonInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Json.label', default: 'Json'), jsonInstance.id])
                redirect jsonInstance
            }
            '*' { respond jsonInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Json jsonInstance) {

        if (jsonInstance == null) {
            notFound()
            return
        }

        jsonInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Json.label', default: 'Json'), jsonInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'json.label', default: 'Json'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
