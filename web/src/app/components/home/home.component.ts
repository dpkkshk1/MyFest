import { Component, OnInit, OnDestroy } from '@angular/core';
import { MyFestService } from 'src/app/Service/my-fest-service.service';
import { Router, NavigationEnd } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})

export class HomeComponent implements OnInit {
  private obUser:any;

  constructor(private _service:MyFestService,private router:Router) { }

  ngOnInit() {
      this._service.getAllEvents().subscribe(
        (res)=>{
          localStorage.setItem("listItems",JSON.stringify(res));

        }
      )
      this.obUser=JSON.parse(localStorage.getItem("obUser"));
      if(this.obUser!=null){
        this._service.getDanger(this.obUser.userId).subscribe(
          (res)=>{
            localStorage.setItem("danger",JSON.stringify(res));
          }
        )
      }
      
  }

}
