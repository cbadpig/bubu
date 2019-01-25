package code.com.bubu.lovestory.mapper.dao;

import code.com.bubu.lovestory.bean.LvxhBean;

public interface LvxhBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LvxhBean record);

    int insertSelective(LvxhBean record);

    LvxhBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LvxhBean record);

    int updateByPrimaryKey(LvxhBean record);
}