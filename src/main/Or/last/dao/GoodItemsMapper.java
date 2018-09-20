package last.dao;

import last.orm.GoodItems;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface GoodItemsMapper {
    @Select("select * from gooditems where Title like #{title}")
    public int goodNumber(String title);

    @Select("select * from gooditems order by Hot desc")
    public List<GoodItems> GetAllItem();

    @Insert("insert into gooditems(Title,Detail,Owner,Hot,Type,Contact,Pic) values(#{title},#{detail},#{owner},#{hot},#{type},#{contact},#{pic})")
    public int InsertItem(GoodItems goodItems);

    @Update("update gooditems set gooditems.Hot=#{hot} where Id=#{id}")
    public void UpdateHotById(GoodItems goodItems);

    @Select("select * from gooditems where Owner=#{i} order by Hot desc")
    public List<GoodItems> GetItemByOwner(int i);

    @Select("select * from gooditems,collections where gooditems.Id=collections.CollectionId and collections.UserId=#{i}")
    public List<GoodItems> GetCollectionsByUserId(int i);

    @Select("select * from gooditems where gooditems.Type like #{type} order by Hot desc")
    public List<GoodItems> GetItemsByKinds(String type);
}
