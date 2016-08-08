package com.hand.handjsonpool01
import com.hand.*
class Project {
    int id;
    String projectName;
    String description;
    Date creationDate;
    Date lastUpdateDate;

    static belongsTo = [user:User];
    static hasMany = [json:Json]
    static constraints = {
    }
    String toString(){
        "${projectName}"
    }
}
