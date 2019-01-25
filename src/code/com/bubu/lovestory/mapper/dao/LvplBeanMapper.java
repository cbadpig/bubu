package code.com.bubu.lovestory.mapper.dao;

import code.com.bubu.lovestory.bean.LvplBean;

public interface LvplBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LvplBean record);

    int insertSelective(LvplBean record);

    LvplBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LvplBean record);

    int updateByPrimaryKeyWithBLOBs(LvplBean record);

    int updateByPrimaryKey(LvplBean record);
}