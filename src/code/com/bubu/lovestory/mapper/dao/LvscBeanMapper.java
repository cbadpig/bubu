package code.com.bubu.lovestory.mapper.dao;

import code.com.bubu.lovestory.bean.LvscBean;

public interface LvscBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LvscBean record);

    int insertSelective(LvscBean record);

    LvscBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LvscBean record);

    int updateByPrimaryKey(LvscBean record);
}