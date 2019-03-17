import { Injectable } from "@angular/core";
import { Subject } from 'rxjs';

@Injectable({providedIn:'root'})

export class SharingService{
    private loginSource = new Subject<any>();
    loginObservable$ = this.loginSource.asObservable();
    
    public emitLoginChange(){
        this.loginSource.next();
    }
    
    private notificationSource = new Subject<any>();
    notificationObservable$  = this.notificationSource.asObservable();
    public emitNotificationChange(){
        this.notificationSource.next();
    }
}