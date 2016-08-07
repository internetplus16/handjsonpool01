package com.hand.handjsonpool01

class Json {

    static constraints = {
		id(min:0)
		placeholderUrl(blank: false)
		method(inList:["Get","Posts","Delete","Put"])
		jsonData(blank: false)
		//startDate(validator:{return (it>new Date())})
		dateCreated()
		lastUpdated()
//		project()
    }

	static belongsTo = [project:Project]

	Integer id
	String placeholderUrl
	String method
	String jsonData
	Project project
	Date dateCreated
	Date lastUpdated
	String toString()
	{
		return "${id},${placeholderUrl}"
	}
}
