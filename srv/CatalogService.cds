using { anirban.db.master, anirban.db.transaction  } from '../db/anirban';


service CatalogService@(path:'/CatalogService') {
entity businesspartnerSet as projection on master.businesspartner;
entity addressSet as projection on master.address;
entity productSet as projection on master.product;    
entity salesorderheaderSet @(title: 'SOHeader') as projection on transaction.salesorderheader
actions{
    function largestOrder() returns array of salesorderheaderSet;
    action boost();  
}
 

entity salesorderitemSet as projection on transaction.salesorderitem;
entity employeeSet as projection on transaction.employee;
}