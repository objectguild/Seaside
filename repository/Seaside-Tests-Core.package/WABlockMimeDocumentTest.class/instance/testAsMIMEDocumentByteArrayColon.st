tests
testAsMIMEDocumentByteArrayColon
	| document content |
	document := WABlockMimeDocument onBlock: [ #(1 2 3 4) asByteArray ].
	document mimeType: WAMimeType imageJpeg.
	self assert: document contentType = WAMimeType imageJpeg.
	content := document content.
	self assert: content size = 4.
	self assert: content class = ByteArray.
	1 to: 4 do: [ :index | self assert: (content at: index) = index ]