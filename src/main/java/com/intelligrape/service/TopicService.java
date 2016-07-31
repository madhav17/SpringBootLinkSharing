package com.intelligrape.service;

import com.intelligrape.model.Topic;

import java.util.List;

public interface TopicService {


    Topic findById(int id);

    Topic saveTopic(Topic topic);

    void saveTopicCreateSubscription(Topic topic);

    void updateTopic(Topic topic, String title, String link);

    List<Topic> findAllTopics();
}
