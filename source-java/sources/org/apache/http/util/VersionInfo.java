package org.apache.http.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes.dex */
public class VersionInfo {
    public static final String PROPERTY_MODULE = "info.module";
    public static final String PROPERTY_RELEASE = "info.release";
    public static final String PROPERTY_TIMESTAMP = "info.timestamp";
    public static final String UNAVAILABLE = "UNAVAILABLE";
    public static final String VERSION_PROPERTY_FILE = "version.properties";
    private final String infoClassloader;
    private final String infoModule;
    private final String infoPackage;
    private final String infoRelease;
    private final String infoTimestamp;

    protected VersionInfo(String str, String str2, String str3, String str4, String str5) {
        Args.notNull(str, "Package identifier");
        this.infoPackage = str;
        String str6 = UNAVAILABLE;
        this.infoModule = str2 != null ? str2 : UNAVAILABLE;
        this.infoRelease = str3 != null ? str3 : UNAVAILABLE;
        this.infoTimestamp = str4 != null ? str4 : UNAVAILABLE;
        this.infoClassloader = str5 != null ? str5 : str6;
    }

    protected static VersionInfo fromMap(String str, Map<?, ?> map, ClassLoader classLoader) {
        Args.notNull(str, "Package identifier");
        String str2 = null;
        String str3 = null;
        String str4 = null;
        if (map != null) {
            str2 = (String) map.get(PROPERTY_MODULE);
            if (str2 != null && str2.length() < 1) {
                str2 = null;
            }
            str3 = (String) map.get(PROPERTY_RELEASE);
            if (str3 != null && (str3.length() < 1 || str3.equals("${pom.version}"))) {
                str3 = null;
            }
            str4 = (String) map.get(PROPERTY_TIMESTAMP);
            if (str4 != null && (str4.length() < 1 || str4.equals("${mvn.timestamp}"))) {
                str4 = null;
            }
        }
        return new VersionInfo(str, str2, str3, str4, classLoader != null ? classLoader.toString() : null);
    }

    public static String getUserAgent(String str, String str2, Class<?> cls) {
        VersionInfo loadVersionInfo = loadVersionInfo(str2, cls.getClassLoader());
        return String.format("%s/%s (Java/%s)", str, loadVersionInfo != null ? loadVersionInfo.getRelease() : UNAVAILABLE, System.getProperty("java.version"));
    }

    public static VersionInfo loadVersionInfo(String str, ClassLoader classLoader) {
        Args.notNull(str, "Package identifier");
        ClassLoader contextClassLoader = classLoader != null ? classLoader : Thread.currentThread().getContextClassLoader();
        Properties properties = null;
        try {
            InputStream resourceAsStream = contextClassLoader.getResourceAsStream(str.replace('.', '/') + "/" + VERSION_PROPERTY_FILE);
            if (resourceAsStream != null) {
                try {
                    Properties properties2 = new Properties();
                    properties2.load(resourceAsStream);
                    properties = properties2;
                    resourceAsStream.close();
                } catch (Throwable th) {
                    resourceAsStream.close();
                    throw th;
                }
            }
        } catch (IOException e) {
        }
        if (properties != null) {
            return fromMap(str, properties, contextClassLoader);
        }
        return null;
    }

    public static VersionInfo[] loadVersionInfo(String[] strArr, ClassLoader classLoader) {
        Args.notNull(strArr, "Package identifier array");
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            VersionInfo loadVersionInfo = loadVersionInfo(str, classLoader);
            if (loadVersionInfo != null) {
                arrayList.add(loadVersionInfo);
            }
        }
        return (VersionInfo[]) arrayList.toArray(new VersionInfo[arrayList.size()]);
    }

    public final String getClassloader() {
        return this.infoClassloader;
    }

    public final String getModule() {
        return this.infoModule;
    }

    public final String getPackage() {
        return this.infoPackage;
    }

    public final String getRelease() {
        return this.infoRelease;
    }

    public final String getTimestamp() {
        return this.infoTimestamp;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.infoPackage.length() + 20 + this.infoModule.length() + this.infoRelease.length() + this.infoTimestamp.length() + this.infoClassloader.length());
        sb.append("VersionInfo(");
        sb.append(this.infoPackage);
        sb.append(':');
        sb.append(this.infoModule);
        if (!UNAVAILABLE.equals(this.infoRelease)) {
            sb.append(':');
            sb.append(this.infoRelease);
        }
        if (!UNAVAILABLE.equals(this.infoTimestamp)) {
            sb.append(':');
            sb.append(this.infoTimestamp);
        }
        sb.append(')');
        if (!UNAVAILABLE.equals(this.infoClassloader)) {
            sb.append('@');
            sb.append(this.infoClassloader);
        }
        return sb.toString();
    }
}
