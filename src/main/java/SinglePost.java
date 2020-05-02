package main.java;
public class SinglePost{
     String username;
     int postid;
     String title;
     String body;
     String modified;
     String created;
    public SinglePost(String username, int postid, String title, String body, String modified, String created) {
        this.username = username;
        this.postid = postid;
        this.title = title;
        this.body = body;
        this.modified = modified;
        this.created = created;

    }

    public String getUsername(){return this.username;}
    public int getPostid(){return this.postid;}
    public String getTitle(){return this.title;}
    public String getBody(){return this.body;}
    public String getModified(){return this.modified;}
    public String getCreated(){return this.created;}

    
}