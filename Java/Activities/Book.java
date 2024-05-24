package Activities;

abstract class Book{
    String title;
    String getTitle(){
        return title;
    }
    public abstract void setTitle(String s);
}
class MyBook extends Book {
    public void setTitle(String s){
        title = s;
    }
}