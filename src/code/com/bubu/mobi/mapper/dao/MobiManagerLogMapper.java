package code.com.bubu.mobi.mapper.dao;

import code.com.bubu.mobi.bean.MobiManagerLog;

public interface MobiManagerLogMapper {
    int deleteByPrimaryKey(String id);

    int insert(MobiManagerLog record);

    int insertSelective(MobiManagerLog record);

    MobiManagerLog selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MobiManagerLog record);

    int updateByPrimaryKey(MobiManagerLog record);
}