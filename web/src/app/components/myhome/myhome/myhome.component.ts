import { Component, OnInit } from '@angular/core';
import { SharingService } from 'src/app/Service/shareingServices';

@Component({
  selector: 'app-myhome',
  templateUrl: './myhome.component.html',
  styleUrls: ['./myhome.component.css']
})
export class MyhomeComponent implements OnInit {

  constructor(private sharingService:SharingService) { }

  ngOnInit() {
    this.sharingService.emitLoginChange();
    this.sharingService.emitNotificationChange();
  }

}
