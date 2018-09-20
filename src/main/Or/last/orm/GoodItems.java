package last.orm;

import javax.persistence.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name="gooditems",catalog="mysecondpage")
public class GoodItems {
    private int id;
    private String title;
    private String detail;
    private int owner;
    private int hot;
    private String type;
    private String pic;
    private String contact;
    @Column(name = "Type", unique = true, nullable = false)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    @Column(name = "Pic", unique = true, nullable = false)
    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }
    @Column(name = "Contact", unique = true, nullable = false)
    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Column(name = "Id", unique = true, nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    @Column(name = "Owner", unique = true, nullable = false)
    public int getOwner() {
        return owner;
    }

    public void setOwner(int owner) {
        this.owner = owner;
    }

    @Column(name = "Hot", unique = true, nullable = false)
    public int getHot() {
        return hot;
    }

    public void setHot(int hot) {
        this.hot = hot;
    }

    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "Title", unique = true, nullable = false)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name = "Detail", unique = true, nullable = false)
    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}
