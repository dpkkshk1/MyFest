export class TeamJoin {
    
  
    private status: number;

    private userId: number;

    private teamId: number;
    
    constructor(){
    }
    
    public getUserId(): number {
        return this.userId;
    }
    
    public setUserId(userId: number) {
        this.userId = this.userId;
    }

    public getTeamId(): number {
        return this.teamId;
    }
    
    public setTeamId(teamId: number) {
        this.teamId = this.teamId;
    }


    public getStatus(): number {
        return this.status;
    }
    
    public setStatus(status: number) {
        this.status = this.status;
    }
    
}

 

