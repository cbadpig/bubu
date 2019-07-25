package code.com.bubu.mobi.mapper.dao;

import code.com.bubu.mobi.bean.MobiManager;
import org.apache.ibatis.annotations.Param;

public interface MobiManagerMapper {

    MobiManager selectManagerByEmail(@Param("email") String email, @Param("password") String password);

    int insertByEmailAndPassword(@Param("email") String email, @Param("password") String password);

    /*int deleteByPrimaryKey(String id);

    int insert(MobiManager record);

    int insertSelective(MobiManager record);

    MobiManager selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MobiManager record);

    int updateByPrimaryKey(MobiManager record);*/



}