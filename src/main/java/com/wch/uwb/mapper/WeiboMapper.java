package com.wch.uwb.mapper;

import com.wch.uwb.entity.WeiboEntity;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface WeiboMapper {
    @Select("SELECT * FROM weibo order by releaseTime desc")
    List<WeiboEntity> getAll();

    @Select("SELECT * FROM weibo WHERE id = #{id}")
    WeiboEntity getOne(int id);

    @Insert("INSERT INTO weibo(uId,content,releaseTime,lastEditTime,good,photo)VALUES(" +
            "#{uId}, #{content},#{releaseTime},#{lastEditTime},#{good},#{photo})")
    void insert(WeiboEntity weibo);

    @Update("UPDATE weibo SET uId=#{uId},content=#{content},releaseTime=#{releaseTime}" +
            ",lastEditTime=#{lastEditTime},good=#{good},photo=#{photo}" +
            " WHERE id =#{id}")
    void update(WeiboEntity weiboEntity);

    @Delete("DELETE FROM weibo WHERE id =#{id}")
    void delete(int id);

    @Select("SELECT * FROM weibo WHERE uId = #{uId} order by releaseTime desc")
    List<WeiboEntity> getOneByUID(int uId);
    //    order by releaseTime desc必须要在LIMIT后面
    @Select("SELECT * FROM weibo order by releaseTime desc LIMIT #{st},#{len} ")
    List<WeiboEntity> getListInInterval(@Param("st") int st,@Param("len") int len);

    @Select("SELECT COUNT(*) FROM weibo")
    int getWeiboListCNT();
//    order by releaseTime desc必须要在LIMIT后面
    @Select("SELECT * FROM weibo WHERE uId = #{uId} order by releaseTime desc LIMIT #{st},#{len} ")
    List<WeiboEntity> getMyListInInterval(@Param("uId") int uId,@Param("st") int st,@Param("len") int len);

    @Select("SELECT COUNT(*) FROM weibo WHERE uId = #{uId}")
    int getMyWeiboListCNT(int uId);
}
