
export async function Confirm(password){
    
    const result = await fetch( "http://localhost:3001/confirm", {
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        headers: {
            'Accept': 'application/json',
           'Content-Type': 'application/json'
          // 'Content-Type': 'application/x-www-form-urlencoded',
        },
       
        body: JSON.stringify({
             "authorization": password
          }),
    })

    const res = await result.json()
    
    return res;

} 