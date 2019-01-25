package code.com.bubu.lovestory.mapper.dao;

import code.com.bubu.lovestory.bean.LvwzBean;

public interface LvwzBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LvwzBean record);

    int insertSelective(LvwzBean record);

    LvwzBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LvwzBean record);

    int updateByPrimaryKeyWithBLOBs(LvwzBean record);

    int updateByPrimaryKey(LvwzBean record);
}