package com.sunnynurul03.Controller;

import java.util.*;

import javax.management.relation.Role;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sunnynurul03.Model.Post;
import com.sunnynurul03.Model.User;
import com.sunnynurul03.Service.Userservice;

@Controller
public class HomeControll {

	@Autowired
	Userservice userservice;
	List<String> sexTypes = new ArrayList<String>();
	List<String> countryList = new ArrayList<String>();

	public void init() {
		sexTypes.clear();
		countryList.clear();

		sexTypes.add("male");
		sexTypes.add("female");
		sexTypes.add("other");

		countryList.add("Bangladesh");
		countryList.add("India");
		countryList.add("Pakistan");
		countryList.add("USA");
		countryList.add("UK");
		countryList.add("South Africa");
		countryList.add("Canada");
	}

	@RequestMapping({ "/login", "/" })
	public String login() {
		return "login";
	}

	/*
	 * @RequestMapping("/auth-successs") public String
	 * authSuccess(SecurityContextHolder contextHolder) {
	 * System.out.println(contextHolder.getContext().getAuthentication().
	 * getPrincipal().toString());
	 * System.out.println(contextHolder.getContext().getAuthentication().
	 * getAuthorities().toString()); return "loginSuccess"; }
	 */
	@RequestMapping("/auth-success")
	public String authSuccess(HttpSession session) {
		org.springframework.security.core.userdetails.User user = (org.springframework.security.core.userdetails.User) SecurityContextHolder
				.getContext().getAuthentication().getPrincipal();
		session.setAttribute("username", user.getUsername());
		System.out.println(user.getAuthorities().toString());
		if (user.getAuthorities().contains(new GrantedAuthority() {
			@Override
			public String getAuthority() {
				// TODO Auto-generated method stub
				return "ROLE_ADMIN";
			}
		})) {
			return "redirect:/admin/page";
		} else if (user.getAuthorities().contains(new GrantedAuthority() {

			@Override
			public String getAuthority() {
				// TODO Auto-generated method stub
				return "ROLE_USER";
			}
		})) {
			return "redirect:/user/page";
		} else {
			return "redirect:/";
		}
	}

	@RequestMapping("/registration")
	public String registration(Model model) {
		init();
		model.addAttribute("actionType", "create");
		model.addAttribute("id", System.currentTimeMillis());
		model.addAttribute("sexTypes", sexTypes);
		model.addAttribute("countryList", countryList);
		model.addAttribute("enabled", 1);
		model.addAttribute("user_id", System.currentTimeMillis());
		model.addAttribute("authority_id", 2);
		// model.addAttribute("user_authority_id",for(int
		// i=1;i<10000;i++)System.out.println(i));
		// model.addAttribute("role",new Role());
		model.addAttribute("user", new User());
		return "registration";
	}

	@RequestMapping("/success")
	public String loginSuccess() {
		return "loginSuccess";
	}
	/*
	 * @RequestMapping(method=RequestMethod.POST,value= {"/user/info"}) public
	 * String formData(@RequestParam("actionType")String
	 * actionType,@ModelAttribute("user")User user,Model model) {
	 * 
	 * model.addAttribute("user",userservice.save(user)); return "userInfo"; }
	 */

	@RequestMapping(method = RequestMethod.POST, value = { "/info" })
	public String resSub(@RequestParam("actionType") String actionType, @RequestParam("gender") String gender,
			@ModelAttribute("user") User user, Model model) {
		if (actionType.equalsIgnoreCase("create")) {
			user.setSex(gender);
			model.addAttribute("user", userservice.save(user));
			model.addAttribute("role", userservice.authority(user));
			return "userInfo";
		}
		/*
		 * else if(actionType.equalsIgnoreCase("update")) {
		 * //model.addAttribute("user",userService.updateUser(user)); return
		 * "redirect://all_users"; }
		 */
		return "redirect://login";
	}

	@RequestMapping(value = "/admin/page", method = RequestMethod.GET)
	public String submitPost_GET(Model model,HttpSession session) {
		System.out.println(session.getAttribute("username").toString());
		model.addAttribute("user", userservice.getUser(session.getAttribute("username").toString()));
		model.addAttribute("post", new Post());
		return "adminPage";
	}
    
	@RequestMapping(value = "/admin/page", method = RequestMethod.POST)
	public String submitPost_POST(Model model,@ModelAttribute()Post post) {
        model.addAttribute("post",userservice.savePost(post));
        model.addAttribute("postSubmitted", "true");
        return "adminPage";
	}
        
/*	@RequestMapping(value = "/admin/page", method = RequestMethod.POST)
	public String submitPost_POST(Model model, @ModelAttribute("post")Post post, HttpSession session) {
		System.out.println(session.getAttribute("username").toString());
		model.addAttribute("user", userservice.getUser(session.getAttribute("username").toString()));
        String username = session.getAttribute("username").toString();
		User user = userservice.getUser(username);
	   	post.setPost_by(user.getID());
		for (User u : userservice.findByRole("ROLE_USER")) {
			post.setPost_to(u.getID());
			userservice.savePost(post);
		}
		model.addAttribute("postSubmitted", "true");
		return "adminPage";
	}
       */
	/*
	 * @RequestMapping("/user/info") public String adminInformation() { return
	 * "userInfo"; }
	 */

	@RequestMapping("/failure")
	public String loginFailure() {
		return "loginFailure";
	}

	@RequestMapping("/user/page")
	public String userPage(Model model, HttpSession session) {
		System.out.println(session.getAttribute("username").toString());
		model.addAttribute("user", userservice.getUser(session.getAttribute("username").toString()));
		model.addAttribute("posts",userservice.getAllPosts());// database theke query kore sob post niye asba jegula ei
														// stnt er id ache
		//System.out.println(userservice.getAllPosts());
		return "UserPage";
	}

	/*
	 * @RequestMapping("/user/page") public String userPage() { return "UserPage"; }
	 */

	@RequestMapping("/user/page/resources")
	public String userPageResource(Model model, HttpSession session) {
		System.out.println(session.getAttribute("username").toString());
		model.addAttribute("user", userservice.getUser(session.getAttribute("username").toString()));
        return "resources";
	}

	@RequestMapping("/user/page/help")
	public String userPageHelp(Model model, HttpSession session) {
		System.out.println(session.getAttribute("username").toString());
		model.addAttribute("user", userservice.getUser(session.getAttribute("username").toString()));
		return "help";
	}

	@RequestMapping("/user/page/brooklynCollege")
	public String userPageBrooklynCollege(Model model, HttpSession session) {
		System.out.println(session.getAttribute("username").toString());
		model.addAttribute("user", userservice.getUser(session.getAttribute("username").toString()));
		return "brooklynCollege";
	}

	@RequestMapping("/user/page/courseRegistration")
	public String userCourseRegistration(Model model, HttpSession session) {
		System.out.println(session.getAttribute("username").toString());
		model.addAttribute("user", userservice.getUser(session.getAttribute("username").toString()));
		return "myCourses";
	}

	@RequestMapping("/l-out")
	public String logout(HttpSession session, Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			SecurityContextHolder.getContext().setAuthentication(null);
			session.invalidate();
			// System.out.println(session.getAttribute("username"));
		}
		return "redirect://login?logout";

	}

	// @RequestMapping(value = "/logout")
	// public String logout(HttpServletRequest request) {
	// System.out.println("logout()");
	// HttpSession httpSession = request.getSession();
	// httpSession.invalidate();
	// System.out.println(httpSession.getAttribute("username"));
	// return "redirect://login";
	// }

	/*
	 * @RequestMapping() public String admin() {
	 * 
	 * return "adminPage"; }
	 */

	/*
	 * @RequestMapping("/403") public String unauthorized() { return "403"; }
	 * 
	 * /*@RequestMapping("/update") public String updatedUser(String
	 * phoneNumber,Model model) { init(); model.addAttribute("actionType","update");
	 * model.addAttribute("sexTypes",sexTypes);
	 * model.addAttribute("countryList",countryList);
	 * model.addAttribute("user",userService.getUser(phoneNumber)); return "form"; }
	 * 
	 * @RequestMapping("/delete") public String userAfterDelete(String
	 * phoneNumber,Model model) {
	 * model.addAttribute("users",userService.removeUser(phoneNumber)); return
	 * "allUsers"; }
	 */

}
