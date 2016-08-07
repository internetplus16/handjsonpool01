package com.hand.handjsonpool01

class Project {
    int id;
    String projectName;
    String description;
    Date creationDate;
    Date lastUpdateDate;

    static belongsTo = [user:User];
    static constraints = {
    }
    static toString(){}
}
