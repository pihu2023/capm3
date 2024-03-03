using CatalogService as service from '../../srv/CatalogService';

annotate service.salesorderheaderSet with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'NODE_KEY',
            Value : NODE_KEY,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SO_ID',
            Value : SO_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OVERALL_STATUS',
            Value : OVERALL_STATUS,
           
        },
        {
            $Type : 'UI.DataField',
            Label : 'CURRENCY_CODE',
            Value : CURRENCY_CODE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'GROSS_AMOUNT',
            Value : GROSS_AMOUNT,
        },

          {
            $Type : 'UI.DataField',
            Label : 'NET_AMOUNT',
            Value : NET_AMOUNT,
        },
  {
            $Type : 'UI.DataField',
            Label : 'TAX_AMOUNT',
            Value : TAX_AMOUNT,
        },
       
    ],

    UI.SelectionFields: [
   SO_ID, OVERALL_STATUS, CURRENCY_CODE
    ],

    UI.HeaderInfo: {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Sales Order',
        TypeNamePlural: 'Sales Orders',

        Title: {
           Label: 'Order ID',
           Value: SO_ID 
        }        
    }


);
annotate service.salesorderheaderSet with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'NODE_KEY',
                Value : NODE_KEY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SO_ID',
                Value : SO_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BUYER_GUID',
                Value : BUYER_GUID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CURRENCY_CODE',
                Value : CURRENCY_CODE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GROSS_AMOUNT',
                Value : GROSS_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NET_AMOUNT',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TAX_AMOUNT',
                Value : TAX_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OVERALL_STATUS',
                Value : OVERALL_STATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NOTE',
                Value : NOTE,
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
    ]
);
