import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router, ParamMap } from '@angular/router';
import { FormBuilder, FormGroup, FormControl } from '@angular/forms';
import { MyFestService } from '../../../Service/my-fest-service.service';
import { MatSnackBar } from '@angular/material';
@Component({
  selector: 'app-events-details',
  templateUrl: './events-details.component.html',
  styleUrls: ['./events-details.component.css']
})
export class EventsDetailsComponent implements OnInit {
  profileForm = new FormGroup({
    firstName1: new FormControl(''),
    firstName2: new FormControl(''),
    firstName3: new FormControl(''),
    firstName4: new FormControl(''),
    firstName5: new FormControl('')
   
  });
  private abc:string="firstName";
  private teamId:number;
  private registeredEvent:any;
  private selectedEvent:any;
  private eventSelected:any;
  private listEvents:any;
  private photoPath:string;
  private photoSuffix:string;
  private eventsDetails:any;
  private obArray:any;
  private creatFormArray:any;
  private obArrayLength:number=0;
  private flag:boolean=true;
  private minSize:number;
  private displayedColumns:string[];
  private obUser:any;
  private leaderActive:boolean=false;
  private rowSpanFlag:boolean=false;
  private secRow:boolean=false;
  private emailId:any;
  private phani:any=1;
  private flag33:boolean=true;
  private status:any = "NA";
  constructor(private route:ActivatedRoute,private router:Router,private _service:MyFestService,private snackBar:MatSnackBar) { }

  ngOnInit() {
    this.photoPath="http://localhost:1111/images/";
    this.photoSuffix=".jpg";
    this.registeredEvent=JSON.parse(localStorage.getItem("danger"));
    this.listEvents=JSON.parse(localStorage.getItem("listItems"));
    this.obUser=JSON.parse(localStorage.getItem("obUser"));
    this.displayedColumns=['teamName','memberName','leaderName','eventName'];

    this.route.paramMap.subscribe(
      (params:ParamMap)=>{
        
        this.teamId=Number(params.get('teamId'));
        console.log("teamid before >>>>>>>> "+this.teamId);
        this.getDanger();
        this.randonFung();
      }

    );

    


    
  }
  
  getDanger(){
    if(this.obUser!=null){
      this._service.getDanger(this.obUser.userId).subscribe(
        (res)=>{
          localStorage.setItem("danger",JSON.stringify(res));
         
          this.registeredEvent=res;
          console.log("======>"+res);
          this.randonFung();
        }
      )
     
     }
  }
  
randonFung(){
  this.route.paramMap.subscribe(
    (params:ParamMap)=>{
      this.eventsDetails=new Array<any>();
      this.obArray=new Array<any>();
      this.teamId=Number(params.get('teamId'));

      console.log("teamid before >>>>>>>> "+this.teamId);

     
      this.registeredEvent.forEach(element => {
       if(element.teamId== this.teamId){
         this.selectedEvent=element;
        console.log("==>Sele===>"+JSON.stringify(this.selectedEvent));
         let obj = {teamId:this.selectedEvent.teamId, teamName: this.selectedEvent.teamName
          , status: this.selectedEvent.status, memberName: this.selectedEvent.memberName,
          leaderName: this.selectedEvent.leaderName, leaderId: this.selectedEvent.leaderId,
          userId: this.selectedEvent.userId, eventName: this.selectedEvent.eventName,
          eventId: this.selectedEvent.eventId
        }
        if(this.selectedEvent.memberName!=null){
          for(var i=1;i<this.selectedEvent.memberName.length;i++){
            this.obArray.push(i);
            
            this.secRow=true;

          }
          this.status= this.selectedEvent.status;
          this.obArrayLength=this.selectedEvent.memberName.length;
         
          this.rowSpanFlag=true;
        }else{
          this.flag=false;
          this.selectedEvent.memberName=["No Member Added"];
          this.selectedEvent.status = "NA";
          this.obArrayLength=0;
       
        }

   
      

       this.eventsDetails.push(obj);
       
         

       } 
     });
     this.listEvents.forEach(element => {
      if(element.eventId== this.selectedEvent.eventId){
        this.eventSelected=element;
        if(this.selectedEvent.leaderId==this.obUser.userId){
          if(this.obArrayLength<this.eventSelected.minSize){
        
           this.flag=true;
            this.minSize=this.eventSelected.minSize-this.obArrayLength;
           
            this.creatFormArray=new Array<any>();
            for(var i=0;i<this.minSize;i++){
              this.creatFormArray.push(i);
              this.leaderActive=true;
             
           
            }

          }else{
            this.flag=false;
          }
               
        }else{
          this.flag=false;
        }
      }
      
    });
    }
   
  );
}
  onSubmit(teamId:any,eventId:any){

    console.log(teamId);

     var data=
     {"teamId":teamId,"teamLeaderId":{"email":this.emailId},"eventId":{"eventId":eventId}};
     

     this._service.sendRequest(data).subscribe(

      (res:any)=>{
        console.log("why "+res.message);
        if(res.messsage=="Success"){
        
          this.snackBar.open("Joining request has been sent ","ok", {
            duration: 3000
          });
          if(this.phani<this.eventSelected.minSize){
            this.flag33=true;
            this.obArrayLength=this.obArrayLength+1;
           this.getDanger();
           console.log("phani >>>>> Before "+this.phani);
            this.phani=this.phani+1;
            console.log("phani >>>>> After "+this.phani);
          }else if(this.phani==this.eventSelected.minSize){
           this.flag33=false;
          
           this.obArrayLength=this.obArrayLength+1;
           this.getDanger();
           this.phani=this.phani+1;
           console.log("phani >>>>> equal "+this.phani);
           this.flag=false;
     
          }
          else{
           this.flag=false;
            this.flag33=false;
          }
          this.emailId="";
        }
        else if(res.messsage=="Failed"){

          this.snackBar.open("Some Problem has occured","ok", {
            duration: 3000
          }
        );

        }
        else if(res.messsage=="notexist"){

          this.snackBar.open("User not available","ok", {
            duration: 3000
          }
        );

        }

        else if(res.messsage=="already"){

          this.snackBar.open("User is already registered to this event","ok", {
            duration: 3000
          }
        );

        }
              
      }
      
      
     );
  
   
  }
   

 
  deleteRequest(teamId:any,userId:any){
    var teamjoinId={
      "userId": userId,
      "teamId":teamId }
     
   
   
   this._service.delete(teamjoinId).subscribe(

     (res)=>
     {
      this.flag33=true;
       this.snackBar.open("Member Removed from Team","ok", {
         duration: 3000
       });
       console.log("phani >>>>> delete Before "+this.phani);
      this.phani=this.phani-1;
      console.log("phani >>>>> delete After "+this.phani);
       this.getDanger();
      
       
       
     
     }
     
   );
  }
 

}
