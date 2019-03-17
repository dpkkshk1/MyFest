import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { User } from '../components/modelClasses/user';

@Injectable({
  providedIn: 'root'
})


export class MyFestService {

  
  constructor(private _http:HttpClient) { 
  }
    doLogin(obUser:User):any{      
      return this._http.post("http://localhost:1337/localhost:1111/loginnn",obUser);

    }

    getAllEvents(){
      return this._http.get("http://localhost:1337/localhost:1111/getAllEvents");
    }

    saveTeam(data:any){
  
      return this._http.post("http://localhost:1337/localhost:1111/registerTe",data);
    }


doSignup(obUser:User):any{
 
      return this._http.post("http://localhost:1337/localhost:1111/registration",obUser);

    }

    getDanger(userId:any){
      return this._http.get("http://localhost:1337/localhost:1111/getAllDetails/"+userId);
    }
    
    getNotification(userId:any){
      return this._http.get("http://localhost:1337/localhost:1111/getNotification/"+userId);
    }


    accept(data:any)
    {
      return this._http.put("http://localhost:1337/localhost:1111/reqAccept",data)
    }

    delete(data:any)
    {
     
      return this._http.post("http://localhost:1337/localhost:1111/reqDelete",data)
    }

    sendRequest(data:any)
    {
      return this._http.post("http://localhost:1337/localhost:1111/sendRequest",data)
    }


  }

