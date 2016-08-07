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
>>>>>>> f5bb3b01f95a2700416e67bcbe636c88378d5053
//		Project project
    }
	
	Integer id
	String placeholderUrl
	String method
	String jsonData
//	Project project
<<<<<<< HEAD
	Date createDate
	Date lastUpdateDate
=======
	Date dateCreated
	Date lastUpdated
>>>>>>> f5bb3b01f95a2700416e67bcbe636c88378d5053
	String toString()
	{
		return "${id},${placeholderUrl}"
	}
}
