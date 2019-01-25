package code.com.bubu.main.mapper.dao;

import code.com.bubu.main.bean.HmdBean;

public interface HmdBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HmdBean record);

    int insertSelective(HmdBean record);

    HmdBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HmdBean record);

    int updateByPrimaryKey(HmdBean record);
}