package com.fest.rest;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.json.JsonParseException;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


import com.fest.encryption.StrongAES;
import com.fest.exception.FestException;
import com.fest.model.DangerousJSON;
import com.fest.model.Events;
import com.fest.model.NotificationJSON;
import com.fest.model.ResponseTransfer;
import com.fest.model.Team;
import com.fest.model.TeamJoin;
import com.fest.model.TeamJoinId;
import com.fest.model.User;
import com.fest.repo.EventsRepoService;
import com.fest.repo.TeamJoinRepoService;
import com.fest.repo.TeamRepoService;
import com.fest.repo.UserRepoService;




@RestController
@CrossOrigin
public class FestRestController {

	@Autowired(required = true)
	private StrongAES strong;

	@Autowired(required = true)
	private EventsRepoService eventsRepoService;
	@Autowired(required = true)
	private UserRepoService userRepoService;
	@Autowired(required = true)
	private TeamRepoService teamRepoService;
	@Autowired(required = true)
	private TeamJoinRepoService teamJoinRepoService;

	@PostMapping("/registration")
	public ResponseTransfer register(@RequestBody User user) {
		ResponseTransfer responseTransfer = new ResponseTransfer();
		String pass = strong.run(user.getPassword());
		user.setPassword(pass);
		User count = userRepoService.registration(user);
		String message = "error";
		if (count != null) {
			message = "Success";
		}

		responseTransfer.setMesssage(message);

		return responseTransfer;

	}

	@PostMapping("/loginnn")
	public User login(@RequestBody User user, HttpSession session) {

		String pass = strong.run(user.getPassword());
		user.setPassword(pass);

		/* int count = userService.loginCheck(user); */
		List<Object[]> list = userRepoService.loginCheck(user);

		User user2 = new User();
		/* System.out.println(count); */

		if (!list.isEmpty()) {

			for (Iterator iterator = list.iterator(); iterator.hasNext();) {
				Object[] objects = (Object[]) iterator.next();

				user2.setUserId((int) objects[0]);
				user2.setName((String) objects[1]);
				user2.setMobile((String) objects[2]);
				user2.setStream((String) objects[3]);
				user2.setCourse((String) objects[4]);
				user2.setEmail((String) objects[5]);

			}
			System.out.println(user2);
			session.setAttribute("obUser", user2);

		}
		/*
		 * if (count>0) { User obUser=new User();
		 * obUser=userService.getUser(count); List<Events> listEvents =
		 * eventsRepoService.allEvents(); session.setAttribute("eventlist",
		 * listEvents); session.setAttribute("obUser", obUser); message =
		 * "success"; } else { List<Events> listEvents =
		 * eventsRepoService.allEvents(); session.setAttribute("eventlist",
		 * listEvents); session.setAttribute("failed", "failed");
		 * 
		 * message = "wrong";
		 * 
		 * }
		 */

		return user2;

	}

	@GetMapping("/all")
	public List<Team> getAllMember(HttpSession session) throws FestException {
		/*
		 * List<TeamJoin> list= new ArrayList<TeamJoin>(); User user=(User)
		 * session.getAttribute("obUser");
		 * list=teamJoinServices.fetchByUserId(user.getUserId()); List<Team>
		 * list1=null; for(TeamJoin teama:list){ int
		 * teamId=teama.getTeamId().getTeamId(); list1= new ArrayList<Team>();
		 * list1= }
		 */
		User user = (User) session.getAttribute("obUser");
		int userId = user.getUserId();

		List<Object[]> list = teamRepoService.getAllTeam(userId);
		List<Team> list2 = new ArrayList<Team>();
		if (!list.isEmpty()) {
			for (Iterator iterator = list.iterator(); iterator.hasNext();) {
				Team team = new Team();
				Object[] objects = (Object[]) iterator.next();

				team.setTeamId((int) objects[2]);
				User userr = new User();
				userr.setUserId((int) objects[0]);
				userr.setName((String) objects[1]);
				team.setTeamLeaderId(userr);
				team.setName((String) objects[3]);
				Events events = new Events();
				events.setEventId((int) objects[5]);
				events.setEventName((String) objects[4]);
				team.setEventId(events);
				list2.add(team);
			}
		}

		return list2;
	}

	@PostMapping("/registerTe")
	public ResponseTransfer teamRegistration(@RequestBody Team team) {

		/*ResponseTransfer responseTransfer = new ResponseTransfer();

		System.out.println(team);
		
		int leaderId=team.getTeamLeaderId().getUserId();
		List<Object[]> list=teamRepoService.registrationCheck(team.getEventId().getEventId(), leaderId);
		String msg = "Failed";
		System.out.println(list+" abesh c");
		if(!list.isEmpty()){
			
			Team obTeam = teamRepoService.createTeam(team);
			if (obTeam != null) {
				msg = "Success";
			}
			
		}
		else
		{
			msg="AlreadyRegistered";
		}
		responseTransfer.setMesssage(msg);
		return responseTransfer;
		*/
		ResponseTransfer responseTransfer = new ResponseTransfer();

		System.out.println(team);
		
		int leaderId=team.getTeamLeaderId().getUserId();
		List<Object[]> list=teamRepoService.registrationCheck(team.getEventId().getEventId(), leaderId);
		String msg = "Failed";
		int msg1=0;
		System.out.println(list+" abesh c");
		if(!list.isEmpty()){
			
			Team obTeam = teamRepoService.createTeam(team);
			if (obTeam != null) {
				msg = ""+obTeam.getTeamId();
			}
			
		}
		else
		{
			msg="0";
		}
		responseTransfer.setMesssage(msg);
		return responseTransfer;
		
	}

	/*
	 * @GetMapping("/requestDelete") public ResponseTransfer
	 * requestDelete(@RequestParam int teamId,HttpSession session){
	 * ResponseTransfer responseTransfer = new ResponseTransfer(); User
	 * user=(User)session.getAttribute("obUser"); int userId=user.getUserId();
	 * int count=teamJoinServices.deleteRequest(userId, teamId); String
	 * messsage="Error"; if(count>0){ messsage="Success"; }
	 * responseTransfer.setMesssage(messsage); return responseTransfer; }
	 * 
	 * @GetMapping("/requestAccept") public ResponseTransfer
	 * requestAccept(@RequestParam int teamId,HttpSession session){
	 * ResponseTransfer responseTransfer = new ResponseTransfer();
	 * 
	 * User user=(User)session.getAttribute("obUser"); int
	 * userId=user.getUserId(); int
	 * count=teamJoinServices.updateTeamJoining(userId, teamId); String
	 * messsage="Error"; if(count>0){ messsage="Success"; }
	 * responseTransfer.setMesssage(messsage);
	 * 
	 * return responseTransfer; }
	 */

/*	@PostMapping("/insertDetails")
	public ResponseTransfer getEmp(@RequestBody TeamJoin teamJoin, HttpSession session) {
		ResponseTransfer responseTransfer = new ResponseTransfer();
		String message = "Failed";

		int arr[] = userRepoService.userByEmail(teamJoin.getJoinTeam());
		int teamId = (int) session.getAttribute("teamId");
		for (int i = 0; i < arr.length; i++) {
			int userId = arr[i];

			TeamJoin obTeamJoin = new TeamJoin(new TeamJoinId(userId, teamId));

			teamJoinRepoService.insertTeamJoining(obTeamJoin);
			message = "Success";
		}

		responseTransfer.setMesssage(message);
		return responseTransfer;

	}*/

	@GetMapping("/getAllEvents")
	public List<Events> getEvent() {
		List<Events> list = eventsRepoService.allEvents();
		return list;
	}

	@GetMapping("/getAllTeams")
	public List<Team> getTeam() {
		List<Team> list = teamRepoService.getAll();
		return list;
	}

	@GetMapping("/getTeam/{teamId}")
	public Optional<TeamJoin> findTeam(@PathVariable int teamId) {
		return teamJoinRepoService.findTeamJoin(teamId);
	}

	@GetMapping("/getdanger/{userId}")
	public List<DangerousJSON> dangerousJSON(@PathVariable int userId){
		List<Object[]> list2= teamRepoService.dangerousJSON(userId);
		List<DangerousJSON> list=new ArrayList<>();
		if(!list2.isEmpty()){
			for (Iterator iterator = list2.iterator(); iterator.hasNext();) {
				DangerousJSON obDangerousJSON=new DangerousJSON();
				
				Object[] objects = (Object[]) iterator.next();
//				int teamId, String teamName, int status, String memberName, String leaderName, int leaderId,
//				String userId
//				DangerousJSON dangerousJSON=new DangerousJSON((Integer.valueOf(Str),(String)objects[2],(String)objects[3],(String)objects[4],(String)objects[5],(String)objects[6]);
					System.out.println("fhufrghvdgh"+objects.length);
					
					
					/*int[] status_int =new int[status.length];
					for(int i =0;i< status.length;status_int[i]= (status[i++]& 0xFF));*/
					
					
					if((objects[2])!=null){
						byte[] statuus = (byte[] )(objects[2]);
						String statuss=new String(statuus);
					String[] status = statuss.split(",");
					obDangerousJSON.setStatus(status);}
					
					if((objects[5])!=null){
						byte[] uuserIds = (byte[])(objects[5]);
						String userStr=new String(uuserIds);
					String[] userIds = userStr.split(",");
					obDangerousJSON.setUserId(userIds);}
					if((objects[3])!=null){
						String mam = (String)(objects[3]);
					String[] memberNames = mam.split(",");
					obDangerousJSON.setMemberName(memberNames);
					}
					/*System.out.println(f+"Ststus");*/
					
					/*System.out.println(status_int[0]+"status");*/
					
					obDangerousJSON.setTeamId((int)(objects[0]));
					obDangerousJSON.setTeamName((String)(objects[1]));
					obDangerousJSON.setLeaderName( (String)(objects[4]));
					obDangerousJSON.setLeaderId((int)(objects[6]));
					obDangerousJSON.setEventName((String)(objects[7]));
					obDangerousJSON.setEventId((int)(objects[8]));
					
					
					System.out.println("------->>>>"+obDangerousJSON);
				list.add(obDangerousJSON);
			}
		}
		return list;
	}

	@GetMapping("/getNotification/{userId}")

	public List<NotificationJSON> notiJSON(@PathVariable int userId) {
		List<Object[]> list2 = teamJoinRepoService.getNotificationDetails(userId);
		List<NotificationJSON> list = new ArrayList<>();
		if (!list2.isEmpty()) {
			for (Iterator iterator = list2.iterator(); iterator.hasNext();) {
				NotificationJSON obNotificationJSON = new NotificationJSON();

				Object[] objects = (Object[]) iterator.next();
				System.out.println("the length of tupple:=>>>>" + objects.length);


			    obNotificationJSON.setUserId(userId);
			    obNotificationJSON.setTeamLeaderName((String) objects[1]);
			    obNotificationJSON.setTeamId((int) objects[2]);
			    obNotificationJSON.setTeamName((String) objects[3]);
			    obNotificationJSON.setEventName((String) objects[4]);
			    obNotificationJSON.setEventId((int) objects[5]);
			    

				System.out.println("------->>>>" + obNotificationJSON);
				list.add(obNotificationJSON);
			}
		}
		return list;
	}
	@PutMapping("/reqAccept")
	public TeamJoin acceptRequest(@RequestBody TeamJoinId teamjoinId)
	{
		TeamJoin teamJoin1=new TeamJoin(teamjoinId);
		
		TeamJoin teamJoin2=new TeamJoin();
		
		teamJoin1.setStatus(1);
		
		teamJoin2=teamJoinRepoService.updateTeamJoin(teamJoin1);
			
		return teamJoin2;
	}
	
	@PostMapping("/reqDelete")
	public int deleteRequest(@RequestBody TeamJoinId teamjoinId)
	{	
		int count=1;
		System.out.println(teamjoinId);
		TeamJoin teamJoin=new TeamJoin(teamjoinId);
		teamJoinRepoService.deleteTeamJoin(teamJoin);;	
		return count;
	}
	@PostMapping("/sendRequest")
	public ResponseTransfer sendRequest(@RequestBody Team team)
	{
		ResponseTransfer responseTransfer=new ResponseTransfer();
		String msg="Failed";
		
		System.out.println(team);
		String emailId=team.getTeamLeaderId().getEmail();
		int eventId=team.getEventId().getEventId();
		int teamId=team.getTeamId();
		List<Object[]> user=userRepoService.userByEmail(emailId);
		System.out.println(">>>>>>>>>>>>>>"+user);
		List<Object[]> list=teamRepoService.joinCheck(eventId, emailId);
		if(!user.isEmpty())
		{	
		     if(!list.isEmpty()){
			
			for (Iterator iterator = user.iterator(); iterator.hasNext();) {
				

				Object[] objects = (Object[]) iterator.next();
				System.out.println("the length of tupple:=>>>>" + objects[0]);
				
				TeamJoinId teamJoinId=new TeamJoinId((int)objects[0], teamId);
				TeamJoin teamJoin=new TeamJoin(teamJoinId);
				teamJoin.setStatus(0);
				teamJoin=teamJoinRepoService.insertTeamJoining(teamJoin);
				if(teamJoin!=null)
				{
					msg="Success";
					responseTransfer.setMesssage(msg);
					
				}else{
					 msg="Failed";
					 responseTransfer.setMesssage(msg);
				}
			}
		
		}else{
			 msg="already";
			 responseTransfer.setMesssage(msg);
			
		}
		}
		else
		{
			msg="notexist";
			responseTransfer.setMesssage(msg);
			
		}
		     
		return responseTransfer;
	}
	
	
	
	


}
