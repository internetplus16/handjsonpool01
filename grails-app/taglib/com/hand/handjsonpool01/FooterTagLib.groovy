package com.hand.handjsonpool01

/**
 * Created by hand on 2016/8/10.
 */
class FooterTagLib {
    def thisYear={
        out<<new Date().format("yyyy-MM-dd")
    }
    def copyright ={attrs,body->
        out<<attrs.startYear + "/"
        out<<thisYear() + " "+ body()
    }
    static defaultEncodeAs = [taglib:'html']
}
