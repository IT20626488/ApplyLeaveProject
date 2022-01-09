/**
 * 
 */
function registration()
{

    var username= document.getElementById("t1").value;
    var userid= document.getElementById("t2").value;
var letters = /^[A-Za-z]+$/;
if(username=='')
    {
        alert('Please enter your user name');
    }
    else if(!letters.test(username))
    {
        alert('Name field required only alphabet characters');
    }
if(userid=='')
    {
        alert('Please enter your user id');
    }
 else
    {				                            
           alert('login successful!');
           
           
    }
}