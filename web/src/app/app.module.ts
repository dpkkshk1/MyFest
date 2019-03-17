import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {FormsModule} from '@angular/forms';
import {ReactiveFormsModule} from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';


import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import { MaterialModule } from './material-module';

import { LayoutModule } from '@angular/cdk/layout';
import { MatToolbarModule, MatButtonModule, MatSidenavModule, MatIconModule, MatListModule} from '@angular/material';
import { FestNavComponent, /* BottomSheetOverviewExampleSheet, */ DialogDataExampleDialog} from './fest-nav/fest-nav.component';
import { HomeComponent } from './components/home/home.component';
import { LoginComponent } from './components/login/login.component';
import { MyFestService } from './Service/my-fest-service.service';
import { HttpClientModule } from '@angular/common/http';
import { MyhomeComponent } from './components/myhome/myhome/myhome.component';
import { EventComponent } from './components/events/event/event.component';
import { TeamRegistrationComponent } from './components/teamRegistration/team-registration/team-registration.component';
import { RouterModule } from '@angular/router';
import { SignupComponent } from './components/signup/signup.component';

import { EventsDetailsComponent } from './components/eventDetails/events-details/events-details.component';

 
import { GalleryComponent } from './components/gallery/gallery.component';
import { ContactusComponent } from './components/contactus/contactus.component';
import { MainhomeComponent } from './components/mainhome/mainhome.component';
import {Ng2PageScrollModule} from 'ng2-page-scroll';
import { SharingService } from './Service/shareingServices';



@NgModule({
  declarations: [
    AppComponent,
    FestNavComponent,
    HomeComponent,
    LoginComponent,
    MyhomeComponent,
    EventComponent,
    TeamRegistrationComponent,


    SignupComponent,
    EventsDetailsComponent,
 
    GalleryComponent,
    ContactusComponent,
    MainhomeComponent,
    DialogDataExampleDialog

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MaterialModule,
    LayoutModule,
    ReactiveFormsModule,
    FormsModule,
    MatToolbarModule,
    MatButtonModule,
    MatSidenavModule,
    MatIconModule,
    MatListModule,
    HttpClientModule,
    ReactiveFormsModule,
    FormsModule,
    Ng2PageScrollModule

  ],
  entryComponents: [
    DialogDataExampleDialog,
],
  providers: [MyFestService,SharingService],
  bootstrap: [HomeComponent]
})
export class AppModule { }
