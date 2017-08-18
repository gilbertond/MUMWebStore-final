package edu.mum.AOP;

import edu.mum.domain.UserDetail;
import edu.mum.util.EmailService;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;


@Aspect
@Component
public class AspectClasSignUp {

    @Autowired
    EmailService emailService;

    @After("execution( * edu.mum.controller.UserController.getSignup(..)) && args(request,userDetailx,redirectAttributes)")
    public void traceMethod(HttpServletRequest request, UserDetail userDetailx, final RedirectAttributes redirectAttributes) {
//        System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
        emailService.sendEmailNotification(userDetailx.getEmail(), "Welcome", "Welcome to MUM Web Store.You Just Signed Up.");
    }
}
