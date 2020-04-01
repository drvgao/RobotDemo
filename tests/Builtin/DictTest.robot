*** Settings ***
Documentation    """ Creates and returns a dictionary based on the given items. 
...    Items are typically given using the key=value syntax same way as &{dictionary} variables are created in the Variable table. Both keys and values can contain variables, and possible equal sign in key can be escaped with a backslash like escaped\=key=value. It is also possible to get items from existing dictionaries by simply using them like &{dict}.
...    Alternatively items can be specified so that keys and values are given separately. This and the key=value syntax can even be combined, but separately given items must be first. If same key is used multiple times, the last value has precedence.
...    The returned dictionary is ordered, and values with strings as keys can also be accessed using a convenient dot-access syntax like ${dict.key}. Technically the returned dictionary is Robot Framework's own DotDict instance. If there is a need, it can be converted into a regular Python dict instance by using the Convert To Dictionary keyword from the Collections library """

*** Variables ***
&{dict}

*** Test Cases ***
Test different ways to create RFW dictionaries
    Create dict objects
    
*** Keywords ***
Create dict objects
	&{dict} =	Create Dictionary	key=value	foo=bar			# key=value syntax
	&{names} =    Create Dictionary    name=rajesh    age=35
	Log    ${names}    
	Should Be True	${dict} == {'key': 'value', 'foo': 'bar'}					
	&{dict2} =	Create Dictionary	key	value	foo	bar	# separate key and value
	Should Be Equal	${dict}	${dict2}				
	&{dict} =	Create Dictionary	${1}=${2}	&{dict}	foo=new		# using variables
	Should Be True	${dict} == {1: 2, 'key': 'value', 'foo': 'new'}					
	Should Be Equal	${dict.key}	value				# dot-access