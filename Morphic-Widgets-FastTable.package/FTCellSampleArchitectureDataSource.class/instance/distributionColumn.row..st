accesing
distributionColumn: column row: rowIndex
	^ FTLabelCellMorph table: table content: ((self elementAt: rowIndex) distribution ) allowEdit: false position: (Array with:column with: rowIndex)