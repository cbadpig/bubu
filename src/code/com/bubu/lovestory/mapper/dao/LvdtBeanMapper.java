package code.com.bubu.lovestory.mapper.dao;

import code.com.bubu.lovestory.bean.LvdtBean;

public interface LvdtBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LvdtBean record);

    int insertSelective(LvdtBean record);

    LvdtBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LvdtBean record);

    int updateByPrimaryKey(LvdtBean record);
}