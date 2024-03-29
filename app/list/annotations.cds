using MyService as service from '../../srv/service';

annotate service.stud_t with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'sid',
            Value : sid,
        },
        {
            $Type : 'UI.DataField',
            Label : 'sname',
            Value : sname,
        },
        {
            $Type : 'UI.DataFieldForIntentBasedNavigation',
            SemanticObject : 'overview',
            Action : 'col',
            Label : 'Col overview',
            Mapping : [
                {
                    $Type : 'Common.SemanticObjectMappingType',
                    SemanticObjectProperty : 'overview',
                    LocalProperty : sid,
                },
            ],
        },
    ]
);
annotate service.stud_t with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'sid',
                Value : sid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'sname',
                Value : sname,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'total',
            ID : 'total',
            Target : 'stud_tot/@UI.LineItem#total',
        },
    ]
);
annotate service.total_t with @(
    UI.LineItem #total : [
        {
            $Type : 'UI.DataField',
            Value : pid,
            Label : 'pid',
        },{
            $Type : 'UI.DataField',
            Value : sid,
            Label : 'sid',
        },{
            $Type : 'UI.DataField',
            Value : sname,
            Label : 'sname',
        },{
            $Type : 'UI.DataField',
            Value : total,
            Label : 'total',
        },]
);
