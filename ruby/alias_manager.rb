# Phase 0 - Assignment 5.5 - Spy Name
# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) 
# to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

Pseudocode
1 - Ask the user for his real name and downcase it.
2 - Split First and Last name
3 - Store each name in a different variable
4 - Interate through each name, changing vowels for next vowels and consonants for next consonants
	4a - Grab one character and check if it is a vowel or consonant
	4b - If it is a vowel find the next vowel and substitute  the initial one for it
	4c - If it is a consonant find the next consonant and substitute the initial one for it
5 - Print new spy name to the user