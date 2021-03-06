package com.intelligrape.dao;

import com.intelligrape.model.Subscription;
import org.hibernate.Criteria;

import java.util.List;

public interface SubscriptionDao {

    Subscription findById(int id);

    void saveSubscription(Subscription subscription);

    List<Subscription> findAllSubscription();

    void deleteSubscription(Subscription subscription);

    void deleteSubscription(int id);

    Criteria fetchCriteria();
}
