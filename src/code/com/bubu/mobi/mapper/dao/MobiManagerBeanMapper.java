package code.com.bubu.mobi.mapper.dao;

import code.com.bubu.mobi.bean.MobiManagerBean;

public interface MobiManagerBeanMapper {
    int deleteByPrimaryKey(String id);

    int insert(MobiManagerBean record);

    int insertSelective(MobiManagerBean record);

    MobiManagerBean selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MobiManagerBean record);

    int updateByPrimaryKey(MobiManagerBean record);
}