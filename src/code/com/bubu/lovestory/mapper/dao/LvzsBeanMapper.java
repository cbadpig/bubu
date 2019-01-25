package code.com.bubu.lovestory.mapper.dao;

import code.com.bubu.lovestory.bean.LvzsBean;

public interface LvzsBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LvzsBean record);

    int insertSelective(LvzsBean record);

    LvzsBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LvzsBean record);

    int updateByPrimaryKey(LvzsBean record);
}