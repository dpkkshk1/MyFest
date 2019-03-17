export class SuperVisor {
    
   
    private superId: number;
    
  
    private superName: string;
    
   
    private superDesignation: string;
 
    private superDepartment: string;
    
    
    private superEmail: string;

    constructor(){
    }
    
    
    public getSuperId(): number {
        return this.superId;
    }
    
    public setSuperId(superId: number) {
        this.superId = this.superId;
    }
    
    public getSuperName(): string {
        return this.superName;
    }
    
    public setSuperName(superName: string) {
        this.superName = this.superName;
    }
    
    public getSuperDesignation(): string {
        return this.superDesignation;
    }
    
    public setSuperDesignation(superDesignation: string) {
        this.superDesignation = this.superDesignation;
    }
    
    public getSuperDepartment(): string {
        return this.superDepartment;
    }
    
    public setSuperDepartment(superDepartment: string) {
        this.superDepartment = this.superDepartment;
    }
    
    public getSuperEmail(): string {
        return this.superEmail;
    }
    
    public setSuperEmail(superEmail: string) {
        this.superEmail = this.superEmail;
    }
    
}