package com.sunnynurul03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
                                                     
@Configuration
@EnableWebSecurity
@ComponentScan(basePackages = {"com.sunnynurul03.Service"})
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	

	protected void  configure(HttpSecurity http) throws Exception
	{
	   //super.configure(http);
	   http.csrf().disable()
	   .authorizeRequests() 
       .antMatchers("/").permitAll()
       .antMatchers("/login").permitAll()
       .antMatchers("/403").permitAll()
       .antMatchers("/registration").permitAll()
       .antMatchers("/info").permitAll()
	                       .antMatchers("/admin/**").hasRole("ADMIN")
	                       .antMatchers("/user/**").hasRole("USER")
	      .anyRequest().authenticated()
	      .and()
	      .formLogin()
	      .loginPage("/login")
	      .loginProcessingUrl("/success")
	      .usernameParameter("userid")
	      .passwordParameter("passwd")
	      .successForwardUrl("/auth-success")
	      .failureUrl("/failure")
	      .permitAll();
//	      .and()
//	      .logout()
//	      .logoutUrl("/logout")
//	      .logoutSuccessUrl("/login");
	     // .exceptionHandling() 
	     // .accessDeniedPage("/403");
		
	}
	
	@Autowired
	protected void configuration(AuthenticationManagerBuilder auth) throws Exception
	{
	   /* auth.inMemoryAuthentication().withUser("admin").password("12345").roles("ADMIN");
	     auth.inMemoryAuthentication().withUser("user").password("12345").roles("ADMIN","USER"); */
	
		   auth.jdbcAuthentication().dataSource(dataSource())
	       .usersByUsernameQuery("select u.username, u.password, u.enabled from user u where u.username=? ")
	       .authoritiesByUsernameQuery(
		            "select u.username, a.authority "
		            + "from user u, authority a, user_authority ua "
		            + "where u.ID = ua.ID "
		            + "and a.id = ua.authority_id and u.username=? ")
		            ;
	    /*   .authoritiesByUsernameQuery(
		            "select u.username, a.authority "
		            + "from user u, authority a"
		            + "where  a.id=u.role"
		            +"and u.id=u.role and u.username=?"
		           )
		       ;  
		       */
	     
	    
	   
	}
	
	     @Bean(name = "dataSource")
	     public static DriverManagerDataSource dataSource() {
	        DriverManagerDataSource dataSource = new DriverManagerDataSource();
	        dataSource.setSchema("/blackboard.sql");
	        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
	        dataSource.setUrl("jdbc:mysql://localhost:3306/blackboard");
	        dataSource.setUsername("root");
	        dataSource.setPassword("Bangladesh94");
	        return dataSource;
	    }
	     
	     @Bean
	     PasswordEncoder BCPasswordEncoder(){
	         return new BCryptPasswordEncoder(11);
	     }
	     
	     @Bean
		 JdbcTemplate jdbcTemplate(){
		   return new JdbcTemplate(dataSource());
		 }
}   
	    