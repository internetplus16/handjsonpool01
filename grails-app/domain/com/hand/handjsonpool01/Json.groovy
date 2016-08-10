package com.hand.handjsonpool01

class Json {

    static constraints = {
		id()
		placeholderUrl(blank: false,url: true)
		method(inList:["Posts","Delete","Put","Get"])
		jsonData(blank: false)
		dateCreated()
		lastUpdated()
		project()
    }

	static belongsTo = [project:Project]

	int id
	String placeholderUrl
	String method
	String jsonData
//	Project project
	Date dateCreated
	Date lastUpdated
	String toString()
	{
		return "${placeholderUrl}"
	}
}
