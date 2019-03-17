
import { Component, OnInit } from '@angular/core';
import {  ActivatedRoute, Router, Event, NavigationStart, NavigationEnd, ParamMap } from '@angular/router';
import { User } from '../../modelClasses/user';
import { FormBuilder, FormGroup, NgForm, FormControl } from '@angular/forms';
import { Events } from '../../modelClasses/events';
import { Team } from '../../modelClasses/team';
import { MyFestService } from '../../../Service/my-fest-service.service';
import { HttpErrorResponse } from '@angular/common/http';
import {MatSnackBar} from '@angular/material';





@Component({
  selector: 'app-team-registration',
  templateUrl: './team-registration.component.html',
  styleUrls: ['./team-registration.component.css']
})
export class TeamRegistrationComponent implements OnInit {
private emailId:any;
  private listEvents:any;
  private eventId:number;
  private photoPath:string;
  private photoSuffix:string;
  private selectedEvent:any;
  private flag:boolean=false;
  private obUser:User;
  private obEvent:Events;
  private obTeam:Team;
  private logedIn:any;
  private userId:number;
  private unReg:boolean=true;
  private successReg:boolean=false;
  private formNow:boolean=false;
  private formLater:boolean=false;
  private email:any;
  private teamId:any;
  private minSize=[];
  private abc:string="firstName";

  options:FormGroup;
  constructor(private snackBar:MatSnackBar,private route:ActivatedRoute,private router:Router,fb: FormBuilder,private _service:MyFestService) {
    
    this.obEvent=new Events();

    this.obTeam=new Team();
    this.options = fb.group({
      hideRequired: false,
      floatLabel: 'auto',
    });
        
   }
 

  ngOnInit() {
    this.obUser=new User();
   
    this.photoPath="http://localhost:1111/images/";
    this.photoSuffix=".jpg";
    
    this.listEvents=JSON.parse(localStorage.getItem("listItems"));
   
   this.route.paramMap.subscribe(
     (params:ParamMap)=>{
       this.eventId=Number(params.get('eventId'));
       console.log("eventId "+this.eventId);
      
       this.listEvents.forEach(element => {
        if(element.eventId== this.eventId){
          this.selectedEvent=element;
          this.obUser=new User();
          this.flag=true;
          this.unReg=true;
          for(var i=1;i<=this.selectedEvent.minSize;i++){
              this.minSize.push(i);
          }
          this.formNow=false;

        }
        
      });
       
     }
    
   );
 
   
     
     this.logedIn=JSON.parse(localStorage.getItem("obUser"));
      this.userId=Number(this.logedIn.userId);
     
    
     
    
   
  }
  registerTeam():any{
  
    this.route.paramMap.subscribe(
      (params:ParamMap)=>{
        this.eventId=Number(params.get('eventId'));
        
      }
    );
    
    var data={"name":this.obTeam.getName(),"teamLeaderId":{"userId":this.userId},"eventId":{"eventId":this.eventId}}
    console.log(JSON.stringify(data));

    this._service.saveTeam(data).subscribe(
      (res:any)=>{
       
        if(res.messsage>"0"){
        this.snackBar.open('Team Registered Successfully','Ok',{
          duration:3000
        })
        this.teamId=res.messsage;
         this.unReg=false;
         this.successReg=true;
        
         

       }else if(res.messsage=="0"){

        this.snackBar.open('You are already registered to this Event','Ok',{
          duration:3000
        })
       }
       else{
      //   console.log("else res");
      this.snackBar.open('your team is not registered','Ok',{
        duration:3000
      })
          
          
       }
      },(error:HttpErrorResponse)=>
      {
        this.snackBar.open('Client/Server error','Ok',{
          duration:3000
        })
          
          console.log(error.status);
          
      }
    )
    ;

    
    
  }
  get diagnostic(){
   
    return JSON.stringify(this.obTeam);
}
formTeamNow(){
  var navi="/showDeatils/"+this.teamId;
  
  this.router.navigate([navi]);

}
formTeamLater(){
 
  this.router.navigate(["/"]);

}
sendReq(ob){
console.log("fdghfg");
var name1:string="name"+ob;



}
onSubmit(ob:any){

 
  

}

}
