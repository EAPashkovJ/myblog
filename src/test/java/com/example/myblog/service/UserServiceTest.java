package com.example.myblog.service;

import com.example.myblog.domain.Role;
import com.example.myblog.domain.User;
import com.example.myblog.repository.UserRepo;
import org.hamcrest.CoreMatchers;
import org.junit.Test;
import org.mockito.ArgumentMatchers;
import org.mockito.Mockito;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Collections;

import static org.junit.Assert.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.mock;

public class UserServiceTest {


    private final UserRepo userRepo = mock(UserRepo.class);
    private final MailSenderService mailService = mock(MailSenderService.class);
    private final PasswordEncoder passwordEncoder = mock(PasswordEncoder.class);


    private final UserService userService = new UserService(userRepo, mailService, passwordEncoder);

    @Test
    public void addUserShouldBeTrue() {
        User user = new User();
        user.setEmail("email@email.email");

        boolean isUserCreated = userService.addUser(user);

        assertTrue(isUserCreated);
        assertNotNull(user.getActivationCode());
        assertTrue(CoreMatchers.is(user.getRoles()).matches(Collections.singleton(Role.USER)));

        Mockito.verify(userRepo, Mockito.times(1)).save(user);
        Mockito.verify(mailService, Mockito.times(1))
                .send(
                        ArgumentMatchers.eq(user.getEmail()),
                        ArgumentMatchers.anyString(),
                        ArgumentMatchers.anyString());

    }

    @Test
    public void addUserShouldFailed() {
        User user = new User();
        user.setUsername("Evgenii");
        user.setEmail("email@email.email");

        Mockito.doReturn(new User())
                .when(userRepo)
                .findByUsername("Evgenii");

        boolean isUserCreated = userService.addUser(user);

        assertFalse(isUserCreated);

        Mockito.verify(userRepo, Mockito.never()).save(ArgumentMatchers.any(User.class));
        Mockito.verify(mailService, Mockito.never())
                .send(
                        ArgumentMatchers.anyString(),
                        ArgumentMatchers.anyString(),
                        ArgumentMatchers.anyString());
    }

    @Test
    public void activateUser() {
        User user = new User();
        user.setActivationCode("activate");

        Mockito.doReturn(user)
                .when(userRepo)
                .findByActivationCode("activate");

        boolean isUserActivated = userService.activateUser("activate");

        assertTrue(isUserActivated);
        assertNull(user.getActivationCode());
        Mockito.verify(userRepo, Mockito.times(1)).save(user);

    }

    @Test
    public void activateUserFail() {
        boolean isUserActivated = userService.activateUser("activate");

        assertFalse(isUserActivated);
        Mockito.verify(userRepo, Mockito.never()).save(any(User.class));

    }
}