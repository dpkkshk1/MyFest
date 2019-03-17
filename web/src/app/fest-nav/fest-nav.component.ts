import { Component, Inject, OnInit } from '@angular/core';
import { BreakpointObserver, Breakpoints, BreakpointState } from '@angular/cdk/layout';
import { Observable, Subject, PartialObserver } from 'rxjs';
import { map } from 'rxjs/operators';
import { Router, NavigationEnd } from '@angular/router';
import { MyFestService } from '../Service/my-fest-service.service';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { MatBottomSheet, MatBottomSheetRef, MAT_BOTTOM_SHEET_DATA, MatSnackBar } from '@angular/material';
import { ok } from 'assert';
import { SharingService } from '../Service/shareingServices';

@Component({
  selector: 'app-fest-nav',
  templateUrl: './fest-nav.component.html',
  styleUrls: ['./fest-nav.component.css']
})
export class FestNavComponent {

  isHandset$: Observable<boolean> = this.breakpointObserver.observe(Breakpoints.Handset)
   .pipe(
     map(result => result.matches)
   );
  
    private flag:boolean=true;
    private flag1:boolean;
    private obUser:any;
    public notifications:any;
    private danger:any;
    private showD:string="/showDeatils/"
    public len:number=0;
    name: string;
    private teamjoinId:any;

    

    public observer: PartialObserver<any>;
    private _subject: Subject<any>;
    


  constructor(private sharingService:SharingService,
    private breakpointObserver: BreakpointObserver,
    private router:Router,
    private _service:MyFestService,
    public dialog: MatDialog) {

 
    // override the route reuse strategy
    this.router.routeReuseStrategy.shouldReuseRoute = function(){
      return false;
    }

      this.router.events.subscribe((evt) => {
        if (evt instanceof NavigationEnd) {
           // trick the Router into believing it's last link wasn't previously loaded
           this.router.navigated = false;
           // if you need to scroll back to top, here is the right place
           window.scrollTo(0, 0);
        }
    });

  

  }
 

    ngOnInit(){
     
      this.obUser=JSON.parse(localStorage.getItem("obUser"));
      
      this.sharingService.loginObservable$.subscribe(res=>{
        this.obUser = JSON.parse(localStorage.getItem("obUser"));

        if(this.obUser != null && this.obUser.userId>0){
          this.flag=false;
          this.flag1=true;
       }
       else{
           this.flag=true;
           this.flag1=false;
       }
       if(this.obUser != null ){
       this._service.getNotification(this.obUser.userId).subscribe(
        (res)=>{
          this.notifications = res;
          this.len=this.notifications.length;
          console.log("lenght"+this.len);
          localStorage.setItem("notification",JSON.stringify(res));
          console.log("noti"+JSON.stringify(this.notifications));
        }
      );}
      });
      

      if(this.obUser != null && this.obUser.userId>0){
        this.flag=false;
        this.flag1=true;
     }else{
         this.flag=true;
         this.flag1=false;
     }
    }
    logoutHome(){
      localStorage.removeItem("obUser");
      this.router.navigate(["/"]);
      window.location.reload();
    }

    getDanger(){
      if(this.obUser!=null){
        this._service.getDanger(this.obUser.userId).subscribe(
          (res)=>{
            localStorage.setItem("danger",JSON.stringify(res));
          }
        )
        this.danger=JSON.parse(localStorage.getItem("danger"));
        console.log(this.danger);
       }
    }
    getNotifiedd(){
     console.log(this.notifications);
    }
    
    openDialog(ob:any) {
      this.dialog.open(DialogDataExampleDialog, {
        data: {
          noti: ob
        }
      });
    }


    }

    @Component({
      selector: 'dialog-overview-example-sheet',
      templateUrl: 'dialog.html',
      
    })
    export class DialogDataExampleDialog {
      private listEvents:any;
      private eventSelected:any;
      private notificationList:any;
      private photoPath:string;
      private photoSuffix:string;
      private teamjoinId:any;
      public dialog: MatDialog;
      private breakpointObserver: BreakpointObserver;
      private router:Router;
      
      
      constructor(@Inject(MAT_DIALOG_DATA) public data:any,
      private _service:MyFestService,
      private snackBar: MatSnackBar,
      private sharingService:SharingService,
      private dialogRef: MatDialogRef<DialogDataExampleDialog>
     
  


    ) {}
      
      public eventId:any=this.data.noti.eventId;
      ngOnInit(){
        console.log(this.data.noti.eventId);
       this.photoPath="http://localhost:1111/images/";
       this.photoSuffix=".jpg";
        this.listEvents=JSON.parse(localStorage.getItem("listItems"));
        this.notificationList=JSON.parse(localStorage.getItem("notification"));
        this.sharingService.notificationObservable$.subscribe((res)=>{
          this.listEvents=JSON.parse(localStorage.getItem("listItems"));
          this.notificationList=JSON.parse(localStorage.getItem("notification"));
        });
        
        this.listEvents.forEach(element => {
         if(element.eventId== this.eventId){
           this.eventSelected=element;
         }
         
       });
 
      }

      requestAccept()
      {

       var obUser=JSON.parse(localStorage.getItem('obUser'));
        this.teamjoinId={
                       "userId": obUser.userId,
                       "teamId": this.data.noti.teamId }
        
        this._service.accept(this.teamjoinId).subscribe(

          (res)=>
          {
            
            this.snackBar.open("You have accepted the request",'Ok', {
              duration: 3000
            });
           // window.location.reload();
           this.sharingService.emitNotificationChange();
           this.sharingService.emitLoginChange();
          
           this.dialogRef.close();
          }

        );
   
      }
      requestDelete()
      {
        var obUser=JSON.parse(localStorage.getItem('obUser')); 
        this.teamjoinId={
           "userId": obUser.userId,
           "teamId":this.data.noti.teamId }
          
        
        
        this._service.delete(this.teamjoinId).subscribe(

          (res)=>
          {
            this.snackBar.open("You have declined the request","ok", {
              duration: 3000
            });
            this.sharingService.emitNotificationChange();
           this.sharingService.emitLoginChange();
            this.dialogRef.close();
          }
          
        );
      }
    }
  

  