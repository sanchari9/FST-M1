import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import java.util.ArrayList;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class Activity1 {
    static ArrayList<String> list;

    @BeforeAll
    static void setUp() throws Exception{
        list = new ArrayList<String>();
        list.add("alpha");
        list.add("beta");
    }

    @Test
    public void insertTest(){
        assertEquals(2, list.size(), "Wrong Size");
        list.add(2, "delta");
        assertEquals(3, list.size(), "Wrong Size");
        assertEquals("alpha", list.get(0), "Wrong value");
        assertEquals("beta", list.get(1), "Wrong value");
        assertEquals("delta", list.get(2), "Wrong value");
    }

    @Test
    public void replaceTest(){
        list.set(1, "kappa");
        assertEquals("alpha", list.get(0), "Wrong value");
        assertEquals("kappa", list.get(1), "Wrong value");
    }
}
