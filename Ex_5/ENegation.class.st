Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #'Ex_5'
}

{ #category : #'instance creation' }
ENegation class >> expression: anExpression [

	^ self new expression: anExpression
]

{ #category : #evaluating }
ENegation >> evaluateWith: anObject [

	^ (expression evaluateWith: anObject) negated
]

{ #category : #accessing }
ENegation >> expression: anExpression [

	expression := anExpression
]

{ #category : #arithmetic }
ENegation >> negated [

	^ expression
]

{ #category : #printing }
ENegation >> printOn: aStream [
aStream nextPutAll: '- '.
expression printOn: aStream
]
