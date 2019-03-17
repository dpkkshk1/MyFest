import { SuperVisor } from './supervisor';

export class Events{
    private eventId:number;
    private eventName:string;
    private fee:number;
    private maxSize:number;
    private minSize:number;
    private location:string;
    private allowedTeams:number;
    private superVisor:SuperVisor;
    private photoPath:string;
    constructor(){
    }

    public  setEventId(eventId:number) {
		this.eventId = eventId;
	}
	public  getEventId():number{
		return this.eventId;
	}
    public  setEventName(eventName:string) {
		this.eventName = eventName;
	}
	public  getEventName():string{
		return this.eventName;
    }public  setMaxSize(maxSize:number) {
		this.maxSize = maxSize;
	}
	public  getMaxSize():number{
		return this.maxSize;
    }public  setMinSize(minSize:number) {
		this.minSize = minSize;
	}
	public  getMinSize():number{
		return this.minSize;
    }
		public  setLocation(location:string) {
		this.location = location;
	}
	public  getLocation():string{
		return this.location;
    }public  setAllowedTeams(allowedTeams:number) {
		this.allowedTeams = allowedTeams;
	}
	public  getAllowedTeams():number{
		return this.allowedTeams;
    }
    public getSuperVisor(): SuperVisor {
        return this.superVisor;
    }
    
    public setSuperVisor(superVisor: SuperVisor) {
        this.superVisor = superVisor;
    }
    
    public getPhotoPath(): string {
        return this.photoPath;
    }
    
    public setPhotoPath(photoPath: string) {
        this.photoPath = photoPath;
    }
    
    public getFee(): number {
        return this.fee;
    }
    
    public setFee(fee: number) {
        this.fee = fee;
    }

}