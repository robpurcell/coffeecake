package com.robbyp.coffeecake

class Account {

	String name
	String number
	String institution
	//List transactions // Probably wants to be a SortedSet
	Currency currency
	AccountType type
	
	String toString() {
		institution + ": " + name
	}
	
    static hasMany = [transactions:Transaction]
		
	static constraints = {
    }
    
}
