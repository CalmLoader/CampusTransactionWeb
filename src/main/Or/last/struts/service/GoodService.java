package last.struts.service;

import last.orm.GoodItems;

import java.util.List;

public interface GoodService {
    public int getGoodNumber(String title);
    public List<GoodItems> GetAllItems();
    public int InsertItems(GoodItems goodItems);
    public void AddHot(GoodItems goodItems);
    public List<GoodItems> GetItemsByOwner(int i);
    public List<GoodItems> GetCollectionsByUserId(int i);
    public List<GoodItems> GetItemsByType(String type);
}
