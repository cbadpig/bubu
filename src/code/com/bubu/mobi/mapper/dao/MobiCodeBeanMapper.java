package code.com.bubu.mobi.mapper.dao;

import code.com.bubu.mobi.bean.MobiCodeBean;

public interface MobiCodeBeanMapper {
    int deleteByPrimaryKey(String id);

    int insert(MobiCodeBean record);

    int insertSelective(MobiCodeBean record);

    MobiCodeBean selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MobiCodeBean record);

    int updateByPrimaryKey(MobiCodeBean record);
}