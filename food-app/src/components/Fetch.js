


export async function remove_menu (menu_id){
    console.log(menu_id)
    const remove = await fetch(`http://localhost:3001/menu${menu_id}`,{
        method:"DELETE",
        headers: {"authorization": localStorage.authorization }
        
      })

   const result = await remove.json()

   return result;
     
} 



//date format yyyy-mm-dd
export async function add_menu (user_id,date){

  const add_menu = await fetch("http://localhost:3001/menu-add",{
    method:"POST",
    headers: {"authorization": localStorage.authorization },
    body: JSON.stringify({
        "user": user_id,
        "date": date
    })

  })
  const res = await add_menu.json()
  
  return res


}


export async function menus (user){
    console.log(user)

    console.log(localStorage.authorization)

     const item = await fetch("http://localhost:3001/menu-all", {
       method: 'POST', // *GET, POST, PUT, DELETE, etc.
       headers: {
           'Accept': 'application/json',
          'Content-Type': 'application/json',
          "authorization": localStorage.authorization
       },
      
       body: JSON.stringify({
           "user": user
         }),
     })

   const res = await item.json()
   localStorage.setItem("items",JSON.stringify(res))
    
     const menu = await fetch("http://localhost:3001/menu", {
       method: 'POST', // *GET, POST, PUT, DELETE, etc.
       headers: {
           'Accept': 'application/json',
          'Content-Type': 'application/json',
          "authorization": localStorage.authorization
       },
      
       body: JSON.stringify({
           "user": user
         }),
   })
      const res1= await menu.json()

      localStorage.setItem("menu",JSON.stringify(res1))

      return res1

 }


export async function add_item(menu_id,item_id,weight){
  
  if(weight===null||weight===0){
    weight=100
  }
  const add_item = await fetch("http://localhost:3001/item-add",{
    method:"POST",
    headers: {"authorization": localStorage.authorization },
    body: JSON.stringify({
        "menu": menu_id,
        "item": item_id,
        "weight":weight
    })

  })
  const res = await add_item.json()
  
  return res
}

export async function delete_item(menu_id,item_id){

  console.log(menu_id)
  console.log(item_id)
  const remove = await fetch(`http://localhost:3001/item/{"menu":${menu_id},"item":${item_id}}`,{
      method:"DELETE",
      headers: {"authorization": localStorage.authorization }
      
    })

 const result = await remove.json()

 return result;

}



 export async function foods(){
    let result = await fetch("http://localhost:3001/all",{
      method:"GET",
      headers: {"authorization": localStorage.authorization }
    });
    let data= await result.json();
   
    return data
    
  }