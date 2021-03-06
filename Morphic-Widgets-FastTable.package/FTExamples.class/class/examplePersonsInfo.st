examples
examplePersonsInfo
	"Show an empty editable table with a textedit column, a date column and a drop list column"
	<example>
	|table dataSource|
dataSource :=FTCellSamplePersonDataSource  new:10.
table := FTTableMorph new
		extent: 500@500;
		selectionMode: #column;
		addColumn: (FTColumn id: 'name');
		addColumn: (FTColumn id: 'dateOfBirth');
		addColumn: (FTColumn id: 'gender');				
		dataSource: dataSource;
		selectRowIndex: 1;
		showFirstRowSelection;	
		beSingleSelection;					    
	     onAnnouncement: FTCellStrongSelectionChanged 
			do: [ :ann | |index ep|
				index := ann selectedCellIndex.	
				ep := EditingProvider dateSource: dataSource. ep addCellEditingEvents:index.
		];
		yourself.
		table openInWindow.