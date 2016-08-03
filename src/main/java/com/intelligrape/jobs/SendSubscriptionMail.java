package com.intelligrape.jobs;

import com.intelligrape.model.Topic;
import com.intelligrape.model.User;
import com.intelligrape.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class SendSubscriptionMail {

    @Autowired
    UserService userService;

    @Autowired
    SubscriptionService subscriptionService;

    @Autowired
    MailHelperService mailHelperService;

    @Autowired
    UtilService utilService;

    @Scheduled(cron = "*/300 * * * * *") // every 50th second
//    @Scheduled(cron = "0 0 * * * *") //the top of every hour of every day.
    public void execute() {

        System.out.println("Jobs is Started");

        List<User> userList = userService.findAllUsers();

        for (User user : userList) {
            List<Topic> unSubscribedTopicList = subscriptionService.fetchUnSubscribedTopics(user);
            String body = utilService.fetchBodyForUnSubscribeTopics(unSubscribedTopicList);
            mailHelperService.sendMail(user.username, "Un Subscribe Topics", body);
        }
        System.out.println("Jobs is Finished");
    }

}
