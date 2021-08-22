baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'HTTPAPIClient'
				with: [ spec repository: 'github://pdebruic/HTTPAPIClient:main/repository' ].
			spec group: 'default' with: #('Country') ].
	spec
		for: #pharo
		do: [ spec
				baseline: 'XMLParser'
					with: [ spec repository: 'github://pharo-contributions/XML-XMLParser/src' ];
				baseline: 'ZincHTTPComponents'
					with: [ spec
						loads: #('Zodiac-Core');
						repository: 'github://svenvc/zinc/repository' ].
			spec
				package: 'Country'
				with: [ spec requires: #('XMLParser' 'ZincHTTPComponents' 'HTTPAPIClient') ] ].
	spec
		for: #gemstone
		do: [ spec
				baseline: 'XMLParser'
				with:
					[ spec repository: 'github://GsDevKit/XML-XMLParser:gemstone/filetree' ].
			spec
				package: 'Country'
				with: [ spec requires: #('XMLParser' 'HTTPAPIClient') ] ]