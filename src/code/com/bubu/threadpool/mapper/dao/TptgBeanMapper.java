package code.com.bubu.threadpool.mapper.dao;

import code.com.bubu.threadpool.bean.TptgBean;

public interface TptgBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TptgBean record);

    int insertSelective(TptgBean record);

    TptgBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TptgBean record);

    int updateByPrimaryKey(TptgBean record);
}