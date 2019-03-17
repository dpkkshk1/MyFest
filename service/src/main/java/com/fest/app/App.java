package com.fest.app;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import com.fest.controller.TestController;
import com.fest.controllers.NormalController;

import com.fest.encryption.StrongAES;
import com.fest.repo.EventsRepoService;
import com.fest.repo.TeamJoinRepoService;
import com.fest.repo.TeamRepoService;
import com.fest.repo.UserRepoService;
import com.fest.rest.FestRestController;


/*@Configuration

@ComponentScan("com.payroll")
@EnableWebMvc
@EnableAutoConfiguration*/
@EntityScan("com.fest.*")
@EnableJpaRepositories (value = "com.fest.repo")
@SpringBootApplication
public class App extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		// TODO Auto-generated method stub
		return builder.sources(App.class);
	}

	@Bean
	public EventsRepoService eventsRepoService() {

		return new EventsRepoService();
	}
	@Bean
	public UserRepoService userRepoService() {

		return new UserRepoService();
	}
	@Bean
	public NormalController normalController() {

		return new NormalController();
	}

	@Bean
	public TeamRepoService teamRepoService() {

		return new TeamRepoService();
	}
	


	@Bean
	public TestController testController() {

		return new TestController();
	}

	@Bean
	public FestRestController festController() {
		return new FestRestController();
	}


	@Bean
	public StrongAES strong() {
		return new StrongAES();
	}


	@Bean
	public EventsRepoService eventRepoService() {
		return new EventsRepoService();
	}


	
	@Bean
	public TeamJoinRepoService teamJoinRepoService() {
		return new TeamJoinRepoService();
	}

	@Bean
	public UrlBasedViewResolver setUpJstl() {
		UrlBasedViewResolver urlBasedViewResolver = new UrlBasedViewResolver();
		urlBasedViewResolver.setPrefix("/WEB-INF/views/");
		urlBasedViewResolver.setSuffix(".jsp");
		urlBasedViewResolver.setViewClass(JstlView.class);

		return urlBasedViewResolver;

	}

	public static void main(String[] args) {
		SpringApplication.run(App.class, args);

	}

}
