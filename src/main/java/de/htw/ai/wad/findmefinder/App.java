package de.htw.ai.wad.findmefinder;

import java.io.File;
import java.io.FileNotFoundException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.MalformedURLException;

public class App {
    public static void main (String[] args)
    {

        if(args==null || args.length == 0) {
            System.out.println("You need an Argument for the .class");
            System.exit(1);
        }

        String classPath = System.getProperty("user.dir") + File.separator + args[0];
        int extensionIndex = args[0].lastIndexOf('.');


        if(extensionIndex == -1) {
            System.out.println("Missing Extension on your File");
            System.exit(0);
        }


        String className = args[0].substring(0, extensionIndex);

        Class DynamicClass = null;
        try {
            DynamicClass = Annotations.loadClass(classPath, className);
        } catch (ClassNotFoundException e) {
            System.out.println("Class not found with following Arguments"+ args[0]+"Error:"+ e.getMessage() );
            System.exit(1);
        } catch (MalformedURLException e) {
            System.out.println(e.getMessage());
            System.exit(1);
        } catch (FileNotFoundException e) {
            System.out.println(e.getMessage());
            System.exit(1);
        }
        Annotations checker = new Annotations(DynamicClass);

        System.out.println("Felder:");
        for(Field field : checker.getFields()) {
            printProperty(field);
        }

        System.out.println("\nMethoden:");
        for(Method method : checker.getMethods()) {
            printProperty(method);
        }

        System.exit(0);
    }

    public static void printProperty(Method method) {
        System.out.println(Modifier.toString(method.getModifiers()) + " " +  method.getReturnType().getCanonicalName() + " " + method.getName());
    }

    public static void printProperty(Field field) {
        System.out.println(Modifier.toString(field.getModifiers()) + " " +  field.getType().getCanonicalName() + " " + field.getName());
    }
}