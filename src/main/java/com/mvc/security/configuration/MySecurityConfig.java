package com.mvc.security.configuration;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;

@EnableWebSecurity
public class MySecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        User.UserBuilder userBuilder = User.withDefaultPasswordEncoder();

        auth.inMemoryAuthentication().withUser(userBuilder.username("alex").password("alex").roles("EMPLOYEE"));
        auth.inMemoryAuthentication().withUser(userBuilder.username("nast").password("nast").roles("HR"));
        auth.inMemoryAuthentication().withUser(userBuilder.username("ilya").password("ilya").roles("MANAGER, HR"));
    }
}
