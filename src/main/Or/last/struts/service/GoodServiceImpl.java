package last.struts.service;

import last.dao.GoodItemsMapper;
import last.dao.UserMapper;
import last.orm.GoodItems;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("goodService")
@Transactional
public class GoodServiceImpl implements GoodService{

    @Resource
    private GoodItemsMapper goodItemsMapper;
    private int goodNumber;

    public int getGoodNumber(String title)
    {
        return goodItemsMapper.goodNumber(title);
    }

    public List<GoodItems> GetAllItems()
    {
        return goodItemsMapper.GetAllItem();
    }


    public int InsertItems(GoodItems goodItems) {
        return goodItemsMapper.InsertItem(goodItems);
    }

    public void AddHot(GoodItems goodItems)
    {
        goodItemsMapper.UpdateHotById(goodItems);
    }

    public List<GoodItems> GetItemsByOwner(int i)
    {
        return goodItemsMapper.GetItemByOwner(i);
    }

    public List<GoodItems> GetCollectionsByUserId(int i)
    {
        return goodItemsMapper.GetCollectionsByUserId(i);
    }

    public List<GoodItems> GetItemsByType(String type)
    {
        return goodItemsMapper.GetItemsByKinds(type);
    }
}
