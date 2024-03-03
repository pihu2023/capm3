module.exports = cds.service.impl( async function(){

const{
  productSet,
  employeeSet,
  salesorderheaderSet

} = this.entities;

this.before('UPDATE',  productSet, ( req, res ) => {
  console.log("aaya kya");
if(parseFloat(req.data.PRICE) >= 100000){
  req.error(500, "Price exceeds limit");  
}
});

this.on('boost', async req => {
  
   try {
    const ID = req.params[0];
    console.log(ID);
    const  tx = cds.tx(req);
    await tx.update(salesorderheaderSet).with({
      GROSS_AMOUNT : { '+=' : 25000 }, NOTE : "Boosted!"
    }).where(ID);
    return {};
   } catch (error) {
    return "Error" + error.toString();
   }
});

this.on('largestOrder', async req =>{
  try {
    const ID = req.params[0];
    console.log(ID);
    const tx = cds.tx(req);
   const reply = await tx.read(salesorderheaderSet).orderBy({
      GROSS_AMOUNT : 'asc'
    }).limit(1);
    return reply;
  } catch (error) {
    return "Error" + error.toString();
  }
});




});