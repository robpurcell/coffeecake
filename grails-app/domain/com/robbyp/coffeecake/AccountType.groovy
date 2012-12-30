package com.robbyp.coffeecake;

enum AccountType {
    
    CURRENT('cur'),
    SAVINGS('sav'),
    CREDITCARD('cre'),
    MORTGAGE('mor');

    final String id

    AccountType(String id) { 
    	this.id = id
    }
    
}