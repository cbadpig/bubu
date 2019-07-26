package code.com.bubu.mobi.mapper.dao;

import code.com.bubu.mobi.bean.MobiMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MobiMenuMapper {

    List<MobiMenu> selectMobiMenu();

    int insertMobiMenu(@Param("name")String name,@Param("url")String url);

    /*int deleteByPrimaryKey(String id);

    int insert(MobiMenu record);

    int insertSelective(MobiMenu record);

    MobiMenu selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MobiMenu record);

    int updateByPrimaryKey(MobiMenu record);*/
}