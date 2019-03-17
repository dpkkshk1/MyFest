import { Events } from './events';
import { User } from './user';

export class Team {
    


    private teamId: number;
    
   
    private name: string;
    
    
    private teamLeaderId: User;
    
   
    private eventId: Events;
    
    
   
    
    constructor(){
    }
    
    
    
    
    public getTeamId(): number {
        return this.teamId;
    }
    
    public setTeamId(teamId: number) {
        this.teamId = this.teamId;
    }
    
    public getName(): string {
        return this.name;
    }
    
    public setName(name: string) {
        this.name = this.name;
    }
    
    public getTeamLeaderId(): User {
        return this.teamLeaderId;
    }
    
    public setTeamLeaderId(teamLeaderId: User) {
        this.teamLeaderId = this.teamLeaderId;
    }
    
    public getEventId(): Events {
        return this.eventId;
    }
    
    public setEventId(eventId: Events) {
        this.eventId = this.eventId;
    }
    
}