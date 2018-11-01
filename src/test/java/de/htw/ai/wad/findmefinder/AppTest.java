package de.htw.ai.wad.findmefinder;


import org.junit.Before;
import org.junit.Test;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;


public class AppTest
{
    public class TClass1
    {
        @FindMe
        public void TestMethod(){}

        public void TestMethod2(){}
    }

    public class TClass2
    {
        @FindMe
        public String publicField;

        public String Field2;
    }
    public class TClass3
    {
        @FindMe
        public void testMethod3(){}

        public String testField;
    }

    Class testingClass1;
    Class testingclass2;
    Class testingClass3;
    Class checkerclass;


    @Test
    public void shouldAnswerWithTrue()
    {
        assertTrue( true );
    }

    @Test(expected = NullPointerException.class)
    public void nullClass()
    {
        Annotations AC = new Annotations( checkerclass );
    }

    @Test
    public void noNotatedMethods()
    {
        Annotations AC = new Annotations(testingclass2);
        assertEquals( true, AC.getMethods().isEmpty() );
    }

    @Test
    public void noNotatedFields()
    {
        Annotations AC = new Annotations(testingClass1);
        assertEquals( true, AC.getFields().isEmpty() );
    }

    @Test
    public void ContainsMethod()
    {
        Annotations AC = new Annotations(testingClass1);
        try {
            Method m = testingClass1.getMethod("TestMethod");
            assertTrue(AC.getMethods().contains(m));
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }

    }

    @Test
    public void ContainsField()
    {
        Annotations AC = new Annotations(testingclass2);
        try {
            Field f = testingclass2.getField("publicField");
            assertEquals( true, AC.getFields().contains( f ) );
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }

    }

    @Test
    public void doesNotContainMethod()
    {
        Annotations AC = new Annotations(testingClass1);
        try {
            Method m = testingClass1.getMethod("TestMethod2");
            assertTrue(!AC.getFields().contains(m));
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }

    }

    @Test
    public void doesNotContainField()
    {
        Annotations AC = new Annotations(testingclass2);
        try {
            Field f = testingclass2.getField("Field2");
            assertTrue(!AC.getFields().contains(f));
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }

    }
    @Test
    public void ContainsMethod3()
    {
        Annotations AC = new Annotations(testingClass3);
        try {
            Method m = testingClass3.getMethod("testMethod3");
            assertTrue(AC.getMethods().contains(m));
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }

        try {
            Field f = testingClass3.getField("testField");
            assertEquals( false, AC.getFields().contains( f ) );
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    @Before
    public void initialized()
    {
        testingClass1 = TClass1.class;
        testingclass2 = TClass2.class;
        testingClass3 = TClass3.class;
        checkerclass = null;
    }
}
