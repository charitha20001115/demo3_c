sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'list',
            componentId: 'stud_tObjectPage',
            contextPath: '/stud_t'
        },
        CustomPageDefinitions
    );
});