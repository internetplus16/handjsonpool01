package com.hand.handjsonpool01

class Json {

    static constraints = {
		id(min:0)
		placeholderUrl(blank: false)
		method(inList:["Get","Posts","Delete","Put"])
		jsonData(blank: false)
<<<<<<< HEAD
		startDate(validator:{return (it>new Date())})
		lastUpdateDate(validator: {return (it>startDate)} )
=======
		//startDate(validator:{return (it>new Date())})
		dateCreated()
		lastUpdated()
<<<<<<< HEAD
//		project()
=======
>>>>>>> f5bb3b01f95a2700416e67bcbe636c88378d5053
//		Project project
>>>>>>> d4313e3a1195bd444391ce0507d2ba890f0e42aa
    }

	static belongsTo = [project:Project]

	Integer id
	String placeholderUrl
	String method
	String jsonData
<<<<<<< HEAD
	Project project
=======
//	Project project
<<<<<<< HEAD
	Date createDate
	Date lastUpdateDate
=======
>>>>>>> d4313e3a1195bd444391ce0507d2ba890f0e42aa
	Date dateCreated
	Date lastUpdated
>>>>>>> f5bb3b01f95a2700416e67bcbe636c88378d5053
	String toString()
	{
		return "${id},${placeholderUrl}"
	}
}
