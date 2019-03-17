import { User } from './user';
import { Team } from './team';

export class TeamFormation {
    
    private status: number;
    
    private userId: User;
    
    private teamId: Team;

    constructor(){
    }
    
    public getStatus(): number {
        return this.status;
    }
    
    public setStatus(status: number) {
        this.status = this.status;
    }
    
    public getUserId(): User {
        return this.userId;
    }
    
    public setUserId(userId: User) {
        this.userId = this.userId;
    }
    
    public getTeamId(): Team {
        return this.teamId;
    }
    
    public setTeamId(teamId: Team) {
        this.teamId = this.teamId;
    }
}