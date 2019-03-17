import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './components/login/login.component';
import { MyhomeComponent } from './components/myhome/myhome/myhome.component';
import { TeamRegistrationComponent } from './components/teamRegistration/team-registration/team-registration.component';
import { SignupComponent } from './components/signup/signup.component';
import { MainhomeComponent } from './components/mainhome/mainhome.component';
import { EventComponent } from './components/events/event/event.component';
import { GalleryComponent } from './components/gallery/gallery.component';

import { EventsDetailsComponent } from './components/eventDetails/events-details/events-details.component';
import { AuthGuard } from './authguard/auth.guard';


const routes: Routes = [
  {path:"login",component:LoginComponent},
  {path:"teamRegistration/:eventId",component:TeamRegistrationComponent,canActivate:[AuthGuard]},
  {path:"teamRegistrationn/:eventId",redirectTo:"teamRegistration/:eventId",canActivate:[AuthGuard]},

  {path:"showDeatils/:teamId",component:EventsDetailsComponent,canActivate:[AuthGuard]},


  {path:"signup",component:SignupComponent},
  {path:"mainhome",component:MainhomeComponent},
  {path:"events",component:EventComponent},
  {path:"gallery",component:GalleryComponent}


];

@NgModule({
  imports: [RouterModule.forRoot(routes, { onSameUrlNavigation: 'ignore' })],
  exports: [RouterModule]
})
export class AppRoutingModule { }
