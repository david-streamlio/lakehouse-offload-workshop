package io.streamnative.training.functions;

import io.streamnative.functions.data.User;

import org.apache.pulsar.io.core.Source;
import org.apache.pulsar.io.core.SourceContext;

import java.util.Map;

public class UserSource implements Source<User> {
    @Override
    public void open(Map<String, Object> config, SourceContext srcContext) throws Exception {

    }
    @Override
    public UserRecord read() throws Exception {
        Thread.sleep(1000);
        User user = User.newBuilder()
                .setId(1)
                .setName("Fred Flintstone")
                .build();

        return new UserRecord(user);
    }

    @Override
    public void close() throws Exception {

    }
}
