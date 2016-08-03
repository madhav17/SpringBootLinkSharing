package com.intelligrape.service;


import com.intelligrape.dao.TopicDao;
import com.intelligrape.dao.UserDao;
import com.intelligrape.model.Topic;
import com.intelligrape.model.User;
import com.intelligrape.util.Util;
import com.intelligrape.util.enums.Role;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service("utilService")
@Transactional
public class UtilService {

    @Autowired
    public UserDao userDao;

    @Autowired
    public TopicDao topicDao;

    @Autowired
    public UserService userService;

    @Autowired
    public TopicService topicService;

    @Autowired
    public SubscriptionService subscriptionService;

    private static final Logger log = Util.getLogger(UtilService.class);

    public void bootStrapData() {
        if (userService.userCount() == 0) {
            log.error("Bootstarp is called ##################################################");
            createUserAndTopic("Madhav", "Khanna", "madhav.khanna@tothenew.com", "1234", "First Topic", true);
            createUserAndTopic("Maddy", "Khanna", "madhav.khanna@intelligrape.com", "1234", "Second Topic", true);
        }
    }

    public void createUserAndTopic(String firstName, String lastName, String username, String password, String title, Boolean enabled) {
        User user = new User(firstName, lastName, username, password, enabled);
        userService.saveUserAndRole(user, Role.ROLE_USER.name());
        Topic topic = topicService.saveTopic(new Topic(user, title, "https://www.google.co.in/"));
        subscriptionService.createSubscription(user, topic, new Date());
    }

    public String fetchBodyForUnSubscribeTopics(List<Topic> unSubscribedTopicList) {
        String body = "Following are the List of Un Subscribe Topics \n";

        for (Topic topic : unSubscribedTopicList) {
            body += topic.title + "\n";
        }
        return body;
    }

}
