package io.streamnative.training.functions;

import io.streamnative.functions.data.User;
import org.apache.pulsar.functions.api.Record;
import java.util.Optional;

public class UserRecord implements Record<User> {

    private User value;

    public UserRecord(User u) {
        this.value = u;
    }

    @Override
    public User getValue() {
        return value;
    }

    @Override
    public Optional<String> getKey() {
        return Optional.of("");
    }
}
