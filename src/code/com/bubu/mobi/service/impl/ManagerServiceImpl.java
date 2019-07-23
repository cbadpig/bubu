package code.com.bubu.mobi.service.impl;

import code.com.bubu.main.util.Result;
import code.com.bubu.mobi.mapper.dao.MobiManagerMapper;
import code.com.bubu.mobi.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImpl implements ManagerService {

    @Autowired
    private MobiManagerMapper mobiManagerMapper;

    @Override
    public Result loging(String email, String password) {

        return null;
    }
}
