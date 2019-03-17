import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { TeamRegistrationComponent } from '../../teamRegistration/team-registration/team-registration.component';

@Component({
  selector: 'app-event',
  templateUrl: './event.component.html',
  styleUrls: ['./event.component.css']
})
export class EventComponent implements OnInit {

  private listEvents:any;
  private photoPath:string;
  private photoSuffix:string;
  private eventSelector:string;

  constructor(private router:Router) { }

  ngOnInit() {
    this.listEvents=JSON.parse(localStorage.getItem("listItems"));
    this.photoPath="http://localhost:1111/images/";
    this.photoSuffix=".jpg";
    this.eventSelector="/teamRegistrationn"

  }
  navToRegistration(eventId:any):any{
    
    this.router.navigate([this.eventSelector,eventId]);
  
    
    
  }  

}
