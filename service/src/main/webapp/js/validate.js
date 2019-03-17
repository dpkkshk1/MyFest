
function removeItem(x){
	/*var tab=	document.getElementById("tab");	*/
	document.getElementById(x).remove();
	
	
	/*if(tab.getElementsByTagName("tr").length==0){
		var di = document.getElementById("idbtn");
		di.parentNode.removeChild(di);
	}*/
	
}


function generateItem(){
	
	var itemNames=["idly","dosa","bhajji","puri"];
	var prices=[1,2,3,4];
	
var tab=	document.getElementById("tab");

var tr=document.createElement("tr");
var a =tab.getElementsByTagName("tr").length+1;
tr.setAttribute("id",a);

var td=document.createElement("td");

var ip=document.createElement("input");
ip.setAttribute("name", "sno");
ip.setAttribute("id", "sno");
//ip.setAttribute("value", ""+Math.round( Math.random()*1000 )+10000);

ip.setAttribute("placeholder", "Enter sno");


var ip2=document.createElement("input");
ip2.setAttribute("name", "quatity");
ip2.setAttribute("id", "quantity");
ip2.setAttribute("placeholder", "Enter Quatity");


//for(j=0;j<5;j++){

var select=document.createElement("select");

for(i=0;i<itemNames.length;i++){

	select.setAttribute("name", "name");
	select.setAttribute("id", "id");
	var option=document.createElement("option");

option.setAttribute("value", itemNames[i] );
option.innerText=itemNames[i];
//option.setAttribute("id", "option"+prices[i]);
//option.setAttribute("name", "option"+prices[i]);


select.appendChild(option);
td.appendChild(select);
//alert(i);
//}

}

td.appendChild(ip);
td.appendChild(ip2);

tr.appendChild(td);
tab.appendChild(tr);

var btn=document.createElement("BUTTOn");
btn.setAttribute("type", "button");
btn.setAttribute("name", "validate");
btn.setAttribute("class", "button2");
btn.setAttribute("id", "idbtn");
btn.setAttribute("onclick", "removeItem("+a+")");
btn.innerText="-";
td.appendChild(btn);

/*if(tab.getElementsByTagName("tr").length==1){
	var div=document.getElementById("fm");
	var btn=document.createElement("BUTTOn");
	btn.setAttribute("type", "button");
	btn.setAttribute("name", "validate");
	btn.setAttribute("class", "button2");
	btn.setAttribute("id", "idbtn");
	btn.setAttribute("onclick", "removeItem()");
	btn.innerText="-";
	div.appendChild(btn);
	
}*/



/*var emp = {
		"employees": {
			"employee": [
				{
					"empNo": "1234",
					"empName": "Deepak",
					"empSalary": "250010",
					"department": {
						"deptId": "10",
						"deptName": "tr",
						"deptLoc": "chennai"
					},
					"address": {
						"street": "Model Town",
						"pincode": "125001",
						"city": "Hisar",
						"state": "Haryana",
						"country": "India"
					},
					"skills": {
						"skill": [
							{
								"skillId": "1",
								"skillName": "Java"
							},
							{
								"skillId": "2",
								"skillName": "R"
							}
						]
					}
				},
				{
					"empNo": "1233",
					"empName": "Sonu",
					"empSalary": "250010",
					"department": {
						"deptId": "10",
						"deptName": "tr",
						"deptLoc": "chennai"
					},
					"address": {
						"street": "whitehouse",
						"pincode": "125001",
						"city": "Delhi",
						"state": "Delhi",
						"country": "India"
					},
					"skills": {
						"skill": [
							{
								"skillId": "1",
								"skillName": "Java"
							},
							{
								"skillId": "3",
								"skillName": "c++"
							}
						]
					}
				}
			]
		}
	}
var str = JSON.stringfy(emp["employees"]["employee"][0]["address"]);
alert(str);
*/

	
}


function validate1(){
	
	var a1=document.forms["dates"]["date1"].value;
	var b1=document.forms["dates"]["date2"].value;
	var d1=new Date(a1.toString());
	var d2=new Date(b1.toString());
	
	if(d1<d2){	
	}else{
		
		alert("first date should be before second date");
	}
	
	
	
	
	
	
}


function validate(){
	
	
var val=	document.getElementById("date").value;

var datee=new Date(val.toString());
alert(datee);
var arr=	val.split("/");
var check=(arr[0]>0 && arr[0]<32) && (arr[1]>0 && arr[1]<13) && (arr[2]>0 && arr[2]<20000);


if(check){
	alert("Date is valid");
	
}else{
	alert("date is not valid");
	
	
}



	
	


}

function validateDate(){
	
	var label=document.createElement("p");
	label.innerText="Enter dod";

	
	var ip=document.createElement("input");
	ip.setAttribute("type", "text");
	ip.setAttribute("name", "date");
	ip.setAttribute("placeholder", "dd/MM/yyyy");
	ip.setAttribute("id", "date");
	
	var btn=document.createElement("BUTTOn");
	btn.setAttribute("type", "button");
	btn.setAttribute("name", "validate");
	//btn.setAttribute("value", "validate");
	btn.setAttribute("onclick", "validate()");
	
	btn.innerText="validate";
	
	var div=document.getElementById("p1");
	
	div.appendChild(label);
	div.appendChild(ip);
	div.appendChild(btn);
	
	//document.body.appendChild(label);
	
	//document.body.appendChild(ip);

	//document.body.appendChild(btn);
	
	
	
	
	
	
	
	
	
	
}


function print1(){
	
var p1=	document.getElementById("p1");
p1.innerHTML="<b>I am fine</b>" +
		"<form name='fone' >" +
		"<input type='text' name='uname' class='textbox' placeholder='Enter name' > <br>"+
		"<input type='password' name='pass' class='textbox' placeholder='Enter password' ><br> "+
		"<input type='submit' class='btn' name='submit' value='Fone'>"+
		"</form>" +
		"<br>";

	
}



function helloo(){
/* document.write("Welcome to jS");
var a=10;
document.write(a+"<br>");
a="Welcome";
document.write(a+"<br>");

a=123.45;
document.write(a+"<br>");

a=new Date();
document.write(a+"<br>"); */

var uname=document.forms["login"]["username"].value;
var pass=document.forms["login"]["password"].value;
if(uname == "" || pass == "")
{
	alert("Username and password should be filled");
	}
var regex=/^[0-9]{4}$/;
var regex2=/^[0-9]{4}[a-z]{4}$/;

//var regex2=/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})/


if(uname.match(regex)){

	//alert("Username is 4 digits");
	
}else{
	
	alert("Username is wrong digits");
	return false;
}

if(uname.match(regex) && pass.match(regex2)){

	alert("password is 4 digits $ chars");
	return true;
}else{
	
	alert("Password is wrong digits chars");
	return false;
}

}
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}


