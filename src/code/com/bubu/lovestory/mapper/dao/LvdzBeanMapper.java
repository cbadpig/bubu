package code.com.bubu.lovestory.mapper.dao;

import code.com.bubu.lovestory.bean.LvdzBean;

public interface LvdzBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LvdzBean record);

    int insertSelective(LvdzBean record);

    LvdzBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LvdzBean record);

    int updateByPrimaryKey(LvdzBean record);
}