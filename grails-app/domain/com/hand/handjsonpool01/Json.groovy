package com.hand.handjsonpool01

class Json {

    static constraints = {
		id()
		placeholderUrl(blank: false)
		method(inList:["Get","Posts","Delete","Put"])
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
		return "${id},${placeholderUrl}"
	}
}
