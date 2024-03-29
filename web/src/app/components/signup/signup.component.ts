import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, FormsModule, ReactiveFormsModule} from '@angular/forms';
import { Router } from '@angular/router';
import { User } from '../modelClasses/user';
import { MyFestService } from '../../Service/my-fest-service.service';
import { HttpErrorResponse } from '@angular/common/http';
import {MatSnackBar} from '@angular/material';
@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {

  private obUser:User;
options:FormGroup;
  
get diagnostic():any{
  return JSON.stringify(this.obUser);
}
  constructor(private snackBar:MatSnackBar, fb: FormBuilder,private router:Router,private _service:MyFestService) {
    this.obUser=new User();
    this.options = fb.group({
      hideRequired: false,
      floatLabel: 'auto',
    });
  }

  onSignup(){
    console.log(this.obUser);
    this._service.doSignup(this.obUser).subscribe(
      (res:any)=>{
       
        if(res.messsage == "Success"){
        this.snackBar.open('Succefully Registered','Ok',{
          duration:2000
        })
          
          localStorage.setItem("obUser",JSON.stringify(res));
          
          setTimeout(() => {
            this.router.navigate(["/login"]);
        }, 1000);
    
         // var xx:any=JSON.parse(localStorage.getItem("obUser"));
          //console.log(xx.userId);
          //console.log(localStorage.getItem("obUser")."userId");
         
       }else{
      //   console.log("else res");
          alert("Problem");
           this.router.navigate(["/signup"]);
       }
      },(error:HttpErrorResponse)=>
      {
        console.log("error");
          alert("Please FIll All fields");
      }
    )


  }



  ngOnInit() {
  }

}
