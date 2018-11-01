package de.htw.ai.wad.findmefinder;

import java.io.File;
import java.io.FileNotFoundException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;

public class Annotations {
    private ArrayList<Method> Methodfinder = new ArrayList();
    private ArrayList<Field> Fields = new ArrayList();

    public Annotations(Class CheckedClass) {
        Method[] methods = CheckedClass.getDeclaredMethods();
        Field[] fields = CheckedClass.getDeclaredFields();

        for(Method method : methods) {
            java.lang.annotation.Annotation[] annotations = method.getAnnotations();
            for(java.lang.annotation.Annotation annotation : annotations) {
                if(annotation instanceof FindMe) {
                    Methodfinder.add(method);
                }
            }
        }

        for(Field field : fields) {
            java.lang.annotation.Annotation[] annotations = field.getDeclaredAnnotations();
            for(java.lang.annotation.Annotation annotation : annotations) {
                if(annotation instanceof FindMe) {
                    Fields.add(field);
                }
            }
        }
    }

    public ArrayList<Field> getFields() {
        return Fields;
    }

    public ArrayList<Method> getMethods() {
        return Methodfinder;
    }

    public static Class loadClass(String classFilePath, String className) throws ClassNotFoundException, MalformedURLException, FileNotFoundException {
        File file = new File(classFilePath);
        if (!file.isFile()) {
            throw(new FileNotFoundException("File " + classFilePath + " not found!"));
        }
        else{
            URL[] classUrls = { file.toURI().toURL() };
            URLClassLoader classLoader = new URLClassLoader(classUrls);
            return classLoader.loadClass(className);
        }
    }
}
