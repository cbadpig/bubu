package code.com.bubu.lovestory.mapper.dao;

import code.com.bubu.lovestory.bean.LvtgBean;

public interface LvtgBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LvtgBean record);

    int insertSelective(LvtgBean record);

    LvtgBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LvtgBean record);

    int updateByPrimaryKey(LvtgBean record);
}