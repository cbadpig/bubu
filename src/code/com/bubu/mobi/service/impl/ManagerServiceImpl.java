package code.com.bubu.mobi.service.impl;

import code.com.bubu.main.util.Result;
import code.com.bubu.mobi.bean.MobiCode;
import code.com.bubu.mobi.bean.MobiManager;
import code.com.bubu.mobi.mapper.dao.MobiCodeMapper;
import code.com.bubu.mobi.mapper.dao.MobiManagerMapper;
import code.com.bubu.mobi.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ManagerServiceImpl implements ManagerService {

    @Autowired
    private MobiManagerMapper mobiManagerMapper;
    @Autowired
    private MobiCodeMapper mobiCodeMapper;

    @Override
    public Result loging(String email, String password) {

        String[] emails = email.split(":");
        MobiManager mobiManager = mobiManagerMapper.selectManagerByEmail(emails[0],password);
        if (mobiManager == null && emails.length > 1) {
            List<MobiCode> mobiCodes = mobiCodeMapper.selectCodeByType(1,emails[1]);
            if(mobiCodes != null && mobiCodes.size() > 0) {
                //插库
                mobiManagerMapper.insertByEmailAndPassword(emails[0],password);
                return Result.ERROR("您的账号已提交申请，请耐心等待管理员审核...");
            }
            return Result.ERROR("您的账号不存在，无法登录！");
        }

        if (mobiManager == null ) {
            return Result.ERROR("您的账号不存在，无法登录！");
        }

        if (emails.length > 1) {
            return Result.ERROR("您的账号已提交过申请，请勿重复提交！");
        }

        if (mobiManager.getStatus() == 0) {
            return Result.ERROR("您的账号正在审核中...");
        }

        return Result.OK();
    }
}
