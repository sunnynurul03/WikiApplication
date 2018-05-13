package com.sunnynurul03.Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.mysql.cj.api.jdbc.Statement;
import com.sunnynurul03.Model.Post;
import com.sunnynurul03.Model.User;

@Service
public class Userservice {
	
	
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public User save(User user)
	{
	  jdbcTemplate.update("INSERT INTO user(name,email,age,phoneNumber,sex,country,username,password,passwordValid,enabled) VALUES(?,?,?,?,?,?,?,?,?,?)",
	  user.getName(),user.getEmail(),user.getAge(),user.getPhoneNumber(),user.getSex(),user.getCountry(),user.getUsername(),user.getPassword(),user.getPasswordValid(),user.getEnabled());
	  return user;
	}
	
	/* public User Username(User user) {
		jdbcTemplate.update("INSERT INTO user(name) VALUE(?)",user.getName());
		return user;
	}  */
	public Post savePost(Post post) {
		jdbcTemplate.update("INSERT INTO post(ID,post_title) VALUES(?,?)",
				post.getID(),post.getPost_title());
		return post;
	}
	
	public List<Post> getAllPosts(){
		List<Post> posts = new ArrayList<Post>();
		List<Map<String,Object>> mapList =jdbcTemplate.queryForList("SELECT*FROM post");
		
		 for(Map<String,Object> map:mapList)
		 {
			 Post post=new Post();
			 
			 post.setID(Integer.parseInt(map.get("ID").toString()));
			 post.setPost_title(map.get("post_title").toString());
			 
			 posts.add(post);
		  }
       return posts;
	}
	
	public User authority(User user)
	{
	  jdbcTemplate.update("INSERT INTO user_authority(user_id,authority_id) VALUES(?,?)",
	  user.getUser_id(),user.getAuthority_id());
	  return user;
	}
   
   public List<User> getAllUsers()
   {
	 List<User> users = new ArrayList<User>();
	 List<Map<String,Object>> mapList =jdbcTemplate.queryForList("SELECT u.*, a.id as authority_id FROM user u, user_authority ua, authority a where u.id=ua.id and ua.authority_id = a.id;");
	 
	 for(Map<String,Object> map:mapList)
	 {
		 User user=new User();
		 
		 
		 user.setID(Integer.parseInt(map.get("id").toString()));
		 user.setName(map.get("name").toString());
		 user.setEmail(map.get("email").toString());
		 user.setAge(Integer.parseInt(map.get("age").toString()));
		 user.setPhoneNumber(map.get("phoneNumber").toString());
		 user.setSex(map.get("sex").toString());
		 user.setCountry(map.get("country").toString());
		 user.setUsername(map.get("username").toString());
		 user.setPassword(map.get("password").toString());
		 user.setPasswordValid(map.get("passwordValid").toString());
		 user.setAuthority_id(Long.parseLong(map.get("authority_id").toString()));
		 user.setEnabled(Integer.parseInt(map.get("enabled").toString()));
		
		 
		 
		 users.add(user);
	  }
	 return users;
  }
   
  
   public List<User> getRoles()
   {
	 List<User> users = new ArrayList<User>();
	 List<Map<String,Object>> mapList =jdbcTemplate.queryForList("SELECT*FROM user_authority");
	 
	 for(Map<String,Object> map:mapList)
	 {
		 
		 User user=new User();
		 
		 user.setUser_id(Long.parseLong(map.get("user_id").toString()));
		 user.setAuthority_id(Integer.parseInt(map.get("authority_id").toString()));
		
		 users.add(user);
	  }
	 return users;
   }
   
  /* public List<User> getUsername() {
	   List<User> users = new ArrayList<User>();
	   List<Map<String,Object>> mapList =jdbcTemplate.queryForList("SELECT*FROM user");
	   
	   for(Map<String,Object> map:mapList)
	   {
		   User user=new User();
		   user.setName(map.get("name").toString());
		   users.add(user);
	   }
	  return users;
   } 
   
   public User getUser(String phoneNumber)
   {
	 for(User u:getAllUsers())
	  {
		if(u.getPhoneNumber().equalsIgnoreCase(phoneNumber))
         {
        	return u;
         }
	  }
	 return null;
   }
    */
  public List<User> findByRole(String role)                                   
   {
	 List<User> users= new ArrayList<User>();
	 Long authorityId = 0L;
	 if(role.equalsIgnoreCase("ROLE_USER")){
		 authorityId = 2L;
	 }else if(role.equalsIgnoreCase("ROLE_ADMIN")) {
		 authorityId = 1L;
	 }
	 for(User u:getAllUsers())
	  {
		 System.out.println(u.getAuthority_id()==authorityId);
		 System.out.println(u.getAuthority_id());
		if(u.getAuthority_id()==authorityId)
         {
        	users.add(u);
         }
	  }
	 return users;
   }
  
   public User getUser(String username)
   {
	 for(User u:getAllUsers())
	  {
		if(u.getUsername().equalsIgnoreCase(username))
         {
        	return u;
         }
	  }
	 return null;
   }
   
 /*    public User loginUser(String username,String password) {
		  
		  User user = this.getUser(username);
		  
		  if(user != null && user.getUsername().equals(username) && user.getPassword().equals(password)) {
			  return user;
		  }
		 return null;
	  }
   
   
   public List<User> updateUser(User user)
   {
	  jdbcTemplate.update("UPDATE tbl_user SET name=?,email=?,age=?,phoneNumber=?,sex=?,country=? WHERE id=?",
	   user.getName(),user.getEmail(),user.getAge(),user.getPhoneNumber(),user.getSex(),user.getCountry(),user.getId());
	  return getAllUsers();
   }
   
   public List<User> removeUser(String phoneNumber)
   {
	  jdbcTemplate.update("DELETE FROM tbl_user WHERE phoneNumber=?",phoneNumber);
	  return getAllUsers();
   }
    */


   
   

}
