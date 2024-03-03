namespace anirban.db;
using { cuid } from '@sap/cds/common';
using { anirban.common } from './common';


type Guid: String(32);

context master {
    entity businesspartner  {
     key   NODE_KEY: String(32);
        BP_ROLE: Integer;
        EMAIL_ADDRESS: String(120);
        PHONE_NUMBER: Integer;
        FAX_NUMBER: Integer64;
        ADDRESS_GUID:Guid;
        BP_ID:String(16);
        COMPANY_NAME:String(128);
    }


    entity address {
    key  NODE_KEY: String(32);
      CITY: String(128);
      POSTAL_CODE:String(64);
      STREET: String(128);
      COUNTRY:String(4);
      ADDRESS_TYPE:String(2);
  
    }

    entity product   {
      key NODE_KEY: Guid;
      PRODUCT_ID: String(24);
      TYPE_CODE: String(4);
        CATEGORY: String(124);
        SUPPLIER_GUID: Guid;
        CURRENCY_CODE:String(10);
        PRICE:Integer;

  
    }
}

context transaction {

   entity salesorderheader {
   key NODE_KEY: Guid;
    SO_ID: String(64);
    BUYER_GUID: Guid;	
    CURRENCY_CODE:String(4);	
    GROSS_AMOUNT:Decimal(15,2);	
    NET_AMOUNT: Decimal(15,2);	
    TAX_AMOUNT: Decimal(15,2);	
    OVERALL_STATUS: String(2);
    NOTE: String(20);
    to_Items: Association to many transaction.salesorderitem { };
   }


entity salesorderitem {
   key NODE_KEY: Guid;
     PARENT_KEY : Guid; 
    SO_ITEM_POS: Integer;	
    PRODUCT_GUID: Guid;
    CURRENCY_CODE:String(4);	
    GROSS_AMOUNT:Decimal(15,2);	
    NET_AMOUNT: Decimal(15,2);	
    TAX_AMOUNT: Decimal(15,2);
 
}
    entity employee : cuid {
        nameFirst: String(40);
        nameLast: String(40);
        sex: common.Gender;
        language:String(1);
        phonenumber: common.Phonenumber;
        email:common.Email;
        currency: String(4) ;
        salaryAmount: Decimal(10,2);

    }
}

