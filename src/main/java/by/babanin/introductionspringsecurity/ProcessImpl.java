package by.babanin.introductionspringsecurity;

import org.springframework.stereotype.Service;

@Service("process")
public class ProcessImpl implements ProcessInterface {
    @Override
    public String getMessage() {
        return "my message";
    }
}
