package com.programcreek.helloworld.controller;

public class TextEditor {
	   private SpellChecker di_spellChecker;

	   // a setter method to inject the dependency.
	   public void setSpellChecker(SpellChecker spellCheckeer) {
	      System.out.println("Inside setSpellChecker." );
	      this.di_spellChecker = spellCheckeer;
	   }
	   // a getter method to return spellChecker
	   public SpellChecker getSpellChecker() {
	      return di_spellChecker;
	   }
	   public void spellCheck() {
		   di_spellChecker.checkSpelling();
	   }
	@Override
	public String toString() {
		return "TextEditor [di_spellChecker=" + di_spellChecker + "]";
	}
	   
	}
