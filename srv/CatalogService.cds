using { anirban.db.master, anirban.db.transaction  } from '../db/anirban';


service CatalogService {
entity businesspartnerSet as projection on master.businesspartner;
entity addressSet as projection on master.address;
entity productSet as projection on master.product;    
entity salesorderheaderSet as projection on transaction.salesorderheader;
entity salesorderitemSet as projection on transaction.salesorderitem;
}