package com.intelligrape.dao;

import com.intelligrape.model.Topic;
import com.intelligrape.model.User;

import java.util.List;

public interface UserDao {

    User findById(int id);

    User saveEmployee(User employee);

    User saveEmployeeAndRole(User employee, String role);

    List<User> findAllUser();

    Long countUserTopics(User user);

    Long countSubscribedTopics(User user);

    Long countUnSubscribedTopics(User user);

    Long countTopicsSubscribedToday(User user);

    List<Topic> recentTopicList(User user);
}
