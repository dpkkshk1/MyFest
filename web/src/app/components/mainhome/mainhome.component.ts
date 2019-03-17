import { Component, OnInit } from '@angular/core';
import { Router, NavigationEnd } from '@angular/router';
import { SharingService } from 'src/app/Service/shareingServices';

@Component({
  selector: 'app-mainhome',
  templateUrl: './mainhome.component.html',
  styleUrls: ['./mainhome.component.css']
})
export class MainhomeComponent implements OnInit {

  constructor(private sharingService:SharingService) {}

  ngOnInit() {
    this.sharingService.emitLoginChange();
    this.sharingService.emitNotificationChange();
  }

}
