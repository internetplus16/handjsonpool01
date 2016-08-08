package com.hand.handjsonpool01

class Json {

    static constraints = {
		id()
		placeholderUrl(blank: false)
		method(inList:["Get","Posts","Delete","Put"])
		jsonData(blank: false)
		startDate()
		lastUpdateDate()
		//startDate(validator:{return (it>new Date())})
		

//		Project project
    }
	
	Integer id
	String placeholderUrl
	String method
	String jsonData
//	Project project
	Date createDate
	Date lastUpdateDate

	String toString()
	{
		return "${id},${placeholderUrl}"
	}
}
