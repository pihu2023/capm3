sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sales/salesorderapp/test/integration/FirstJourney',
		'sales/salesorderapp/test/integration/pages/salesorderheaderSetList',
		'sales/salesorderapp/test/integration/pages/salesorderheaderSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, salesorderheaderSetList, salesorderheaderSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sales/salesorderapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThesalesorderheaderSetList: salesorderheaderSetList,
					onThesalesorderheaderSetObjectPage: salesorderheaderSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);