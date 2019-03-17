export class User {
    
    
   
    private userId: number;
    
  
    private name: string;
    
   
    private mobile: string;
    
    
    private stream: string;
    
    
    private course: string;
    
   
    private email: string;
    
   
    private password: string;
    
    constructor(){
    }
    
    
    public getUserId(): number {
        return this.userId;
    }
    
    public setUserId(userId: number) {
        this.userId = this.userId;
    }
    
    public getName(): string {
        return this.name;
    }
    
    public setName(name: string) {
        this.name = this.name;
    }
    
    public getMobile(): string {
        return this.mobile;
    }
    
    public setMobile(mobile: string) {
        this.mobile = this.mobile;
    }
    
    public getStream(): string {
        return this.stream;
    }
    
    public setStream(stream: string) {
        this.stream = this.stream;
    }
    
    public getCourse(): string {
        return this.course;
    }
    
    public setCourse(course: string) {
        this.course = this.course;
    }
    
    public getEmail(): string {
        return this.email;
    }
    
    public setEmail(email: string) {
        this.email = this.email;
    }
    
    public getPassword(): string {
        return this.password;
    }
    
    public setPassword(password: string) {
        this.password = this.password;
    }
    
}