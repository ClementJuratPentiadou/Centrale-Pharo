Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #'Ex_5'
}

{ #category : #tests }
ENegationTest >> testEvaluate [

	self
		assert:
		((ENegation new expression: (EConstant new value: 5)) evaluateWith: Dictionary new)
		equals: -5
]

{ #category : #tests }
ENegationTest >> testEvaluateWithClassCreationMessage [

	self
		assert: ((ENegation expression: (EConstant value: 5)) evaluateWith: Dictionary new)
		equals: -5
]

{ #category : #tests }
ENegationTest >> testNegatedStructureIsCorrect [

	| exp |
	exp := EConstant constant5.
	self assert: exp negated class equals: ENegation.
	self
		assert: exp negated negated asString
		equals: exp asString
]

{ #category : #tests }
ENegationTest >> testNegationNegated [

	self
		assert: ((EConstant new value: 6) negated negated evaluateWith: Dictionary new)
		equals: 6
]
