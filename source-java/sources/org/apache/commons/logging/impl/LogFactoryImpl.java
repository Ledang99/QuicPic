package org.apache.commons.logging.impl;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Hashtable;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogConfigurationException;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class LogFactoryImpl extends LogFactory {
    public static final String ALLOW_FLAWED_CONTEXT_PROPERTY = "org.apache.commons.logging.Log.allowFlawedContext";
    public static final String ALLOW_FLAWED_DISCOVERY_PROPERTY = "org.apache.commons.logging.Log.allowFlawedDiscovery";
    public static final String ALLOW_FLAWED_HIERARCHY_PROPERTY = "org.apache.commons.logging.Log.allowFlawedHierarchy";
    public static final String LOG_PROPERTY = "org.apache.commons.logging.Log";
    protected static final String LOG_PROPERTY_OLD = "org.apache.commons.logging.log";
    static /* synthetic */ Class class$java$lang$String;
    static /* synthetic */ Class class$org$apache$commons$logging$Log;
    static /* synthetic */ Class class$org$apache$commons$logging$LogFactory;
    static /* synthetic */ Class class$org$apache$commons$logging$impl$LogFactoryImpl;
    private boolean allowFlawedContext;
    private boolean allowFlawedDiscovery;
    private boolean allowFlawedHierarchy;
    private String diagnosticPrefix;
    private String logClassName;
    protected Class[] logConstructorSignature;
    protected Method logMethod;
    protected Class[] logMethodSignature;
    private static final String PKG_IMPL = "org.apache.commons.logging.impl.";
    private static final int PKG_LEN = PKG_IMPL.length();
    private static final String LOGGING_IMPL_LOG4J_LOGGER = "org.apache.commons.logging.impl.Log4JLogger";
    private static final String LOGGING_IMPL_JDK14_LOGGER = "org.apache.commons.logging.impl.Jdk14Logger";
    private static final String LOGGING_IMPL_LUMBERJACK_LOGGER = "org.apache.commons.logging.impl.Jdk13LumberjackLogger";
    private static final String LOGGING_IMPL_SIMPLE_LOGGER = "org.apache.commons.logging.impl.SimpleLog";
    private static final String[] classesToDiscover = {LOGGING_IMPL_LOG4J_LOGGER, LOGGING_IMPL_JDK14_LOGGER, LOGGING_IMPL_LUMBERJACK_LOGGER, LOGGING_IMPL_SIMPLE_LOGGER};
    private boolean useTCCL = true;
    protected Hashtable attributes = new Hashtable();
    protected Hashtable instances = new Hashtable();
    protected Constructor logConstructor = null;

    public LogFactoryImpl() {
        Class[] clsArr = new Class[1];
        Class cls = class$java$lang$String;
        if (cls == null) {
            cls = class$("java.lang.String");
            class$java$lang$String = cls;
        }
        clsArr[0] = cls;
        this.logConstructorSignature = clsArr;
        this.logMethod = null;
        Class[] clsArr2 = new Class[1];
        Class cls2 = class$org$apache$commons$logging$LogFactory;
        if (cls2 == null) {
            cls2 = class$(LogFactory.FACTORY_PROPERTY);
            class$org$apache$commons$logging$LogFactory = cls2;
        }
        clsArr2[0] = cls2;
        this.logMethodSignature = clsArr2;
        initDiagnostics();
        if (isDiagnosticsEnabled()) {
            logDiagnostic("Instance created.");
        }
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0164 A[LOOP:0: B:5:0x003a->B:36:0x0164, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01cb A[EDGE_INSN: B:37:0x01cb->B:23:0x01cb BREAK  A[LOOP:0: B:5:0x003a->B:36:0x0164], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Log createLogFromClass(String str, String str2, boolean z) throws LogConfigurationException {
        String str3;
        Throwable th;
        Class cls;
        Object newInstance;
        URL systemResource;
        String str4 = ".class";
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Attempting to instantiate '");
            stringBuffer.append(str);
            stringBuffer.append("'");
            logDiagnostic(stringBuffer.toString());
        }
        Object[] objArr = {str2};
        Log log = null;
        ClassLoader baseClassLoader = getBaseClassLoader();
        Class cls2 = null;
        Constructor constructor = null;
        Throwable th2 = null;
        while (true) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Trying to load '");
            stringBuffer2.append(str);
            stringBuffer2.append("' from classloader ");
            stringBuffer2.append(objectId(baseClassLoader));
            logDiagnostic(stringBuffer2.toString());
            try {
                try {
                    if (isDiagnosticsEnabled()) {
                        StringBuffer stringBuffer3 = new StringBuffer();
                        stringBuffer3.append(str.replace('.', '/'));
                        stringBuffer3.append(str4);
                        String stringBuffer4 = stringBuffer3.toString();
                        if (baseClassLoader != null) {
                            systemResource = baseClassLoader.getResource(stringBuffer4);
                        } else {
                            StringBuffer stringBuffer5 = new StringBuffer();
                            stringBuffer5.append(stringBuffer4);
                            stringBuffer5.append(str4);
                            systemResource = ClassLoader.getSystemResource(stringBuffer5.toString());
                        }
                        if (systemResource == null) {
                            StringBuffer stringBuffer6 = new StringBuffer();
                            stringBuffer6.append("Class '");
                            stringBuffer6.append(str);
                            stringBuffer6.append("' [");
                            stringBuffer6.append(stringBuffer4);
                            stringBuffer6.append("] cannot be found.");
                            logDiagnostic(stringBuffer6.toString());
                        } else {
                            StringBuffer stringBuffer7 = new StringBuffer();
                            stringBuffer7.append("Class '");
                            stringBuffer7.append(str);
                            stringBuffer7.append("' was found at '");
                            stringBuffer7.append(systemResource);
                            stringBuffer7.append("'");
                            logDiagnostic(stringBuffer7.toString());
                        }
                    }
                    try {
                        cls = Class.forName(str, true, baseClassLoader);
                    } catch (ClassNotFoundException e) {
                        String message = e.getMessage();
                        StringBuffer stringBuffer8 = new StringBuffer();
                        stringBuffer8.append("The log adapter '");
                        stringBuffer8.append(str);
                        stringBuffer8.append("' is not available via classloader ");
                        stringBuffer8.append(objectId(baseClassLoader));
                        stringBuffer8.append(": ");
                        stringBuffer8.append(message.trim());
                        logDiagnostic(stringBuffer8.toString());
                        try {
                            cls = Class.forName(str);
                        } catch (ClassNotFoundException e2) {
                            String message2 = e2.getMessage();
                            StringBuffer stringBuffer9 = new StringBuffer();
                            stringBuffer9.append("The log adapter '");
                            stringBuffer9.append(str);
                            str3 = str4;
                            try {
                                stringBuffer9.append("' is not available via the LogFactoryImpl class classloader: ");
                                stringBuffer9.append(message2.trim());
                                logDiagnostic(stringBuffer9.toString());
                                break;
                            } catch (Throwable th3) {
                                th = th3;
                                handleThrowable(th);
                                handleFlawedDiscovery(str, baseClassLoader, th);
                                th = th;
                                if (baseClassLoader != null) {
                                }
                            }
                        }
                    }
                    constructor = cls.getConstructor(this.logConstructorSignature);
                    newInstance = constructor.newInstance(objArr);
                } catch (Throwable th4) {
                    th = th4;
                    str3 = str4;
                }
                if (newInstance instanceof Log) {
                    cls2 = cls;
                    log = (Log) newInstance;
                    break;
                }
                handleFlawedHierarchy(baseClassLoader, cls);
                str3 = str4;
                th = cls;
                if (baseClassLoader != null) {
                    break;
                }
                baseClassLoader = getParentClassLoader(baseClassLoader);
                str4 = str3;
                th2 = th;
            } catch (ExceptionInInitializerError e3) {
                String message3 = e3.getMessage();
                StringBuffer stringBuffer10 = new StringBuffer();
                stringBuffer10.append("The log adapter '");
                stringBuffer10.append(str);
                stringBuffer10.append("' is unable to initialize itself when loaded via classloader ");
                stringBuffer10.append(objectId(baseClassLoader));
                stringBuffer10.append(": ");
                stringBuffer10.append(message3.trim());
                logDiagnostic(stringBuffer10.toString());
            } catch (NoClassDefFoundError e4) {
                String message4 = e4.getMessage();
                StringBuffer stringBuffer11 = new StringBuffer();
                stringBuffer11.append("The log adapter '");
                stringBuffer11.append(str);
                stringBuffer11.append("' is missing dependencies when loaded via classloader ");
                stringBuffer11.append(objectId(baseClassLoader));
                stringBuffer11.append(": ");
                stringBuffer11.append(message4.trim());
                logDiagnostic(stringBuffer11.toString());
            } catch (LogConfigurationException e5) {
                throw e5;
            }
        }
        if (cls2 != null && z) {
            this.logClassName = str;
            this.logConstructor = constructor;
            try {
                this.logMethod = cls2.getMethod("setLogFactory", this.logMethodSignature);
                StringBuffer stringBuffer12 = new StringBuffer();
                stringBuffer12.append("Found method setLogFactory(LogFactory) in '");
                stringBuffer12.append(str);
                stringBuffer12.append("'");
                logDiagnostic(stringBuffer12.toString());
            } catch (Throwable th5) {
                handleThrowable(th5);
                this.logMethod = null;
                StringBuffer stringBuffer13 = new StringBuffer();
                stringBuffer13.append("[INFO] '");
                stringBuffer13.append(str);
                stringBuffer13.append("' from classloader ");
                stringBuffer13.append(objectId(baseClassLoader));
                stringBuffer13.append(" does not declare optional method ");
                stringBuffer13.append("setLogFactory(LogFactory)");
                logDiagnostic(stringBuffer13.toString());
            }
            StringBuffer stringBuffer14 = new StringBuffer();
            stringBuffer14.append("Log adapter '");
            stringBuffer14.append(str);
            stringBuffer14.append("' from classloader ");
            stringBuffer14.append(objectId(cls2.getClassLoader()));
            stringBuffer14.append(" has been selected for use.");
            logDiagnostic(stringBuffer14.toString());
        }
        return log;
    }

    private Log discoverLogImplementation(String str) throws LogConfigurationException {
        if (isDiagnosticsEnabled()) {
            logDiagnostic("Discovering a Log implementation...");
        }
        initConfiguration();
        Log log = null;
        String findUserSpecifiedLogClassName = findUserSpecifiedLogClassName();
        if (findUserSpecifiedLogClassName == null) {
            if (isDiagnosticsEnabled()) {
                logDiagnostic("No user-specified Log implementation; performing discovery using the standard supported logging implementations...");
            }
            int i = 0;
            while (true) {
                String[] strArr = classesToDiscover;
                if (i >= strArr.length || log != null) {
                    break;
                }
                log = createLogFromClass(strArr[i], str, true);
                i++;
            }
            if (log != null) {
                return log;
            }
            throw new LogConfigurationException("No suitable Log implementation");
        }
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Attempting to load user-specified log class '");
            stringBuffer.append(findUserSpecifiedLogClassName);
            stringBuffer.append("'...");
            logDiagnostic(stringBuffer.toString());
        }
        Log createLogFromClass = createLogFromClass(findUserSpecifiedLogClassName, str, true);
        if (createLogFromClass != null) {
            return createLogFromClass;
        }
        StringBuffer stringBuffer2 = new StringBuffer("User-specified log class '");
        stringBuffer2.append(findUserSpecifiedLogClassName);
        stringBuffer2.append("' cannot be found or is not useable.");
        informUponSimilarName(stringBuffer2, findUserSpecifiedLogClassName, LOGGING_IMPL_LOG4J_LOGGER);
        informUponSimilarName(stringBuffer2, findUserSpecifiedLogClassName, LOGGING_IMPL_JDK14_LOGGER);
        informUponSimilarName(stringBuffer2, findUserSpecifiedLogClassName, LOGGING_IMPL_LUMBERJACK_LOGGER);
        informUponSimilarName(stringBuffer2, findUserSpecifiedLogClassName, LOGGING_IMPL_SIMPLE_LOGGER);
        throw new LogConfigurationException(stringBuffer2.toString());
    }

    private String findUserSpecifiedLogClassName() {
        if (isDiagnosticsEnabled()) {
            logDiagnostic("Trying to get log class from attribute 'org.apache.commons.logging.Log'");
        }
        String str = (String) getAttribute(LOG_PROPERTY);
        if (str == null) {
            if (isDiagnosticsEnabled()) {
                logDiagnostic("Trying to get log class from attribute 'org.apache.commons.logging.log'");
            }
            str = (String) getAttribute(LOG_PROPERTY_OLD);
        }
        if (str == null) {
            if (isDiagnosticsEnabled()) {
                logDiagnostic("Trying to get log class from system property 'org.apache.commons.logging.Log'");
            }
            try {
                str = getSystemProperty(LOG_PROPERTY, null);
            } catch (SecurityException e) {
                if (isDiagnosticsEnabled()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("No access allowed to system property 'org.apache.commons.logging.Log' - ");
                    stringBuffer.append(e.getMessage());
                    logDiagnostic(stringBuffer.toString());
                }
            }
        }
        if (str == null) {
            if (isDiagnosticsEnabled()) {
                logDiagnostic("Trying to get log class from system property 'org.apache.commons.logging.log'");
            }
            try {
                str = getSystemProperty(LOG_PROPERTY_OLD, null);
            } catch (SecurityException e2) {
                if (isDiagnosticsEnabled()) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("No access allowed to system property 'org.apache.commons.logging.log' - ");
                    stringBuffer2.append(e2.getMessage());
                    logDiagnostic(stringBuffer2.toString());
                }
            }
        }
        return str != null ? str.trim() : str;
    }

    private ClassLoader getBaseClassLoader() throws LogConfigurationException {
        Class cls = class$org$apache$commons$logging$impl$LogFactoryImpl;
        if (cls == null) {
            cls = class$(LogFactory.FACTORY_DEFAULT);
            class$org$apache$commons$logging$impl$LogFactoryImpl = cls;
        }
        ClassLoader classLoader = getClassLoader(cls);
        if (!this.useTCCL) {
            return classLoader;
        }
        ClassLoader contextClassLoaderInternal = getContextClassLoaderInternal();
        ClassLoader lowestClassLoader = getLowestClassLoader(contextClassLoaderInternal, classLoader);
        if (lowestClassLoader == null) {
            if (!this.allowFlawedContext) {
                throw new LogConfigurationException("Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader.");
            }
            if (isDiagnosticsEnabled()) {
                logDiagnostic("[WARNING] the context classloader is not part of a parent-child relationship with the classloader that loaded LogFactoryImpl.");
            }
            return contextClassLoaderInternal;
        }
        if (lowestClassLoader != contextClassLoaderInternal) {
            if (!this.allowFlawedContext) {
                throw new LogConfigurationException("Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader.");
            }
            if (isDiagnosticsEnabled()) {
                logDiagnostic("Warning: the context classloader is an ancestor of the classloader that loaded LogFactoryImpl; it should be the same or a descendant. The application using commons-logging should ensure the context classloader is used correctly.");
            }
        }
        return lowestClassLoader;
    }

    private boolean getBooleanConfiguration(String str, boolean z) {
        String configurationValue = getConfigurationValue(str);
        return configurationValue == null ? z : Boolean.valueOf(configurationValue).booleanValue();
    }

    protected static ClassLoader getClassLoader(Class cls) {
        return LogFactory.getClassLoader(cls);
    }

    private String getConfigurationValue(String str) {
        String systemProperty;
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[ENV] Trying to get configuration for item ");
            stringBuffer.append(str);
            logDiagnostic(stringBuffer.toString());
        }
        Object attribute = getAttribute(str);
        if (attribute != null) {
            if (isDiagnosticsEnabled()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("[ENV] Found LogFactory attribute [");
                stringBuffer2.append(attribute);
                stringBuffer2.append("] for ");
                stringBuffer2.append(str);
                logDiagnostic(stringBuffer2.toString());
            }
            return attribute.toString();
        }
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("[ENV] No LogFactory attribute found for ");
            stringBuffer3.append(str);
            logDiagnostic(stringBuffer3.toString());
        }
        try {
            systemProperty = getSystemProperty(str, null);
        } catch (SecurityException e) {
            if (isDiagnosticsEnabled()) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("[ENV] Security prevented reading system property ");
                stringBuffer4.append(str);
                logDiagnostic(stringBuffer4.toString());
            }
        }
        if (systemProperty != null) {
            if (isDiagnosticsEnabled()) {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("[ENV] Found system property [");
                stringBuffer5.append(systemProperty);
                stringBuffer5.append("] for ");
                stringBuffer5.append(str);
                logDiagnostic(stringBuffer5.toString());
            }
            return systemProperty;
        }
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append("[ENV] No system property found for property ");
            stringBuffer6.append(str);
            logDiagnostic(stringBuffer6.toString());
        }
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer7 = new StringBuffer();
            stringBuffer7.append("[ENV] No configuration defined for item ");
            stringBuffer7.append(str);
            logDiagnostic(stringBuffer7.toString());
        }
        return null;
    }

    protected static ClassLoader getContextClassLoader() throws LogConfigurationException {
        return LogFactory.getContextClassLoader();
    }

    private static ClassLoader getContextClassLoaderInternal() throws LogConfigurationException {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.apache.commons.logging.impl.LogFactoryImpl.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                return LogFactoryImpl.directGetContextClassLoader();
            }
        });
    }

    private ClassLoader getLowestClassLoader(ClassLoader classLoader, ClassLoader classLoader2) {
        if (classLoader == null) {
            return classLoader2;
        }
        if (classLoader2 == null) {
            return classLoader;
        }
        ClassLoader classLoader3 = classLoader;
        while (classLoader3 != null) {
            if (classLoader3 == classLoader2) {
                return classLoader;
            }
            classLoader3 = getParentClassLoader(classLoader3);
        }
        ClassLoader classLoader4 = classLoader2;
        while (classLoader4 != null) {
            if (classLoader4 == classLoader) {
                return classLoader2;
            }
            classLoader4 = getParentClassLoader(classLoader4);
        }
        return null;
    }

    private ClassLoader getParentClassLoader(final ClassLoader classLoader) {
        try {
            return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.apache.commons.logging.impl.LogFactoryImpl.3
                @Override // java.security.PrivilegedAction
                public Object run() {
                    return classLoader.getParent();
                }
            });
        } catch (SecurityException e) {
            logDiagnostic("[SECURITY] Unable to obtain parent classloader");
            return null;
        }
    }

    private static String getSystemProperty(final String str, final String str2) throws SecurityException {
        return (String) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.apache.commons.logging.impl.LogFactoryImpl.2
            @Override // java.security.PrivilegedAction
            public Object run() {
                return System.getProperty(str, str2);
            }
        });
    }

    private void handleFlawedDiscovery(String str, ClassLoader classLoader, Throwable th) {
        Throwable targetException;
        Throwable exception;
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Could not instantiate Log '");
            stringBuffer.append(str);
            stringBuffer.append("' -- ");
            stringBuffer.append(th.getClass().getName());
            stringBuffer.append(": ");
            stringBuffer.append(th.getLocalizedMessage());
            logDiagnostic(stringBuffer.toString());
            if ((th instanceof InvocationTargetException) && (targetException = ((InvocationTargetException) th).getTargetException()) != null) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("... InvocationTargetException: ");
                stringBuffer2.append(targetException.getClass().getName());
                stringBuffer2.append(": ");
                stringBuffer2.append(targetException.getLocalizedMessage());
                logDiagnostic(stringBuffer2.toString());
                if ((targetException instanceof ExceptionInInitializerError) && (exception = ((ExceptionInInitializerError) targetException).getException()) != null) {
                    StringWriter stringWriter = new StringWriter();
                    exception.printStackTrace(new PrintWriter((Writer) stringWriter, true));
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("... ExceptionInInitializerError: ");
                    stringBuffer3.append(stringWriter.toString());
                    logDiagnostic(stringBuffer3.toString());
                }
            }
        }
        if (!this.allowFlawedDiscovery) {
            throw new LogConfigurationException(th);
        }
    }

    private void handleFlawedHierarchy(ClassLoader classLoader, Class cls) throws LogConfigurationException {
        Class cls2;
        boolean z = false;
        Class cls3 = class$org$apache$commons$logging$Log;
        if (cls3 == null) {
            cls3 = class$(LOG_PROPERTY);
            class$org$apache$commons$logging$Log = cls3;
        }
        String name = cls3.getName();
        Class<?>[] interfaces = cls.getInterfaces();
        int i = 0;
        while (true) {
            if (i >= interfaces.length) {
                break;
            }
            if (name.equals(interfaces[i].getName())) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            if (this.allowFlawedDiscovery) {
                if (isDiagnosticsEnabled()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("[WARNING] Log class '");
                    stringBuffer.append(cls.getName());
                    stringBuffer.append("' does not implement the Log interface.");
                    logDiagnostic(stringBuffer.toString());
                    return;
                }
                return;
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Terminating logging for this context. ");
            stringBuffer2.append("Log class '");
            stringBuffer2.append(cls.getName());
            stringBuffer2.append("' does not implement the Log interface.");
            if (isDiagnosticsEnabled()) {
                logDiagnostic(stringBuffer2.toString());
            }
            throw new LogConfigurationException(stringBuffer2.toString());
        }
        if (isDiagnosticsEnabled()) {
            try {
                if (class$org$apache$commons$logging$Log == null) {
                    cls2 = class$(LOG_PROPERTY);
                    class$org$apache$commons$logging$Log = cls2;
                } else {
                    cls2 = class$org$apache$commons$logging$Log;
                }
                ClassLoader classLoader2 = getClassLoader(cls2);
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Class '");
                stringBuffer3.append(cls.getName());
                stringBuffer3.append("' was found in classloader ");
                stringBuffer3.append(objectId(classLoader));
                stringBuffer3.append(". It is bound to a Log interface which is not");
                stringBuffer3.append(" the one loaded from classloader ");
                stringBuffer3.append(objectId(classLoader2));
                logDiagnostic(stringBuffer3.toString());
            } catch (Throwable th) {
                handleThrowable(th);
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("Error while trying to output diagnostics about bad class '");
                stringBuffer4.append(cls);
                stringBuffer4.append("'");
                logDiagnostic(stringBuffer4.toString());
            }
        }
        if (this.allowFlawedHierarchy) {
            if (isDiagnosticsEnabled()) {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("Warning: bad log hierarchy. ");
                stringBuffer5.append("You have more than one version of '");
                Class cls4 = class$org$apache$commons$logging$Log;
                if (cls4 == null) {
                    cls4 = class$(LOG_PROPERTY);
                    class$org$apache$commons$logging$Log = cls4;
                }
                stringBuffer5.append(cls4.getName());
                stringBuffer5.append("' visible.");
                logDiagnostic(stringBuffer5.toString());
                return;
            }
            return;
        }
        StringBuffer stringBuffer6 = new StringBuffer();
        stringBuffer6.append("Terminating logging for this context ");
        stringBuffer6.append("due to bad log hierarchy. ");
        stringBuffer6.append("You have more than one version of '");
        Class cls5 = class$org$apache$commons$logging$Log;
        if (cls5 == null) {
            cls5 = class$(LOG_PROPERTY);
            class$org$apache$commons$logging$Log = cls5;
        }
        stringBuffer6.append(cls5.getName());
        stringBuffer6.append("' visible.");
        if (isDiagnosticsEnabled()) {
            logDiagnostic(stringBuffer6.toString());
        }
        throw new LogConfigurationException(stringBuffer6.toString());
    }

    private void informUponSimilarName(StringBuffer stringBuffer, String str, String str2) {
        if (!str.equals(str2) && str.regionMatches(true, 0, str2, 0, PKG_LEN + 5)) {
            stringBuffer.append(" Did you mean '");
            stringBuffer.append(str2);
            stringBuffer.append("'?");
        }
    }

    private void initConfiguration() {
        this.allowFlawedContext = getBooleanConfiguration(ALLOW_FLAWED_CONTEXT_PROPERTY, true);
        this.allowFlawedDiscovery = getBooleanConfiguration(ALLOW_FLAWED_DISCOVERY_PROPERTY, true);
        this.allowFlawedHierarchy = getBooleanConfiguration(ALLOW_FLAWED_HIERARCHY_PROPERTY, true);
    }

    private void initDiagnostics() {
        String str;
        ClassLoader classLoader = getClassLoader(getClass());
        if (classLoader == null) {
            str = "BOOTLOADER";
        } else {
            try {
                str = objectId(classLoader);
            } catch (SecurityException e) {
                str = "UNKNOWN";
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[LogFactoryImpl@");
        stringBuffer.append(System.identityHashCode(this));
        stringBuffer.append(" from ");
        stringBuffer.append(str);
        stringBuffer.append("] ");
        this.diagnosticPrefix = stringBuffer.toString();
    }

    protected static boolean isDiagnosticsEnabled() {
        return LogFactory.isDiagnosticsEnabled();
    }

    private boolean isLogLibraryAvailable(String str, String str2) {
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Checking for '");
            stringBuffer.append(str);
            stringBuffer.append("'.");
            logDiagnostic(stringBuffer.toString());
        }
        try {
            if (createLogFromClass(str2, getClass().getName(), false) == null) {
                if (isDiagnosticsEnabled()) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Did not find '");
                    stringBuffer2.append(str);
                    stringBuffer2.append("'.");
                    logDiagnostic(stringBuffer2.toString());
                }
                return false;
            }
            if (!isDiagnosticsEnabled()) {
                return true;
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Found '");
            stringBuffer3.append(str);
            stringBuffer3.append("'.");
            logDiagnostic(stringBuffer3.toString());
            return true;
        } catch (LogConfigurationException e) {
            if (isDiagnosticsEnabled()) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("Logging system '");
                stringBuffer4.append(str);
                stringBuffer4.append("' is available but not useable.");
                logDiagnostic(stringBuffer4.toString());
            }
            return false;
        }
    }

    @Override // org.apache.commons.logging.LogFactory
    public Object getAttribute(String str) {
        return this.attributes.get(str);
    }

    @Override // org.apache.commons.logging.LogFactory
    public String[] getAttributeNames() {
        return (String[]) this.attributes.keySet().toArray(new String[this.attributes.size()]);
    }

    @Override // org.apache.commons.logging.LogFactory
    public Log getInstance(Class cls) throws LogConfigurationException {
        return getInstance(cls.getName());
    }

    @Override // org.apache.commons.logging.LogFactory
    public Log getInstance(String str) throws LogConfigurationException {
        Log log = (Log) this.instances.get(str);
        if (log != null) {
            return log;
        }
        Log newInstance = newInstance(str);
        this.instances.put(str, newInstance);
        return newInstance;
    }

    protected String getLogClassName() {
        if (this.logClassName == null) {
            discoverLogImplementation(getClass().getName());
        }
        return this.logClassName;
    }

    protected Constructor getLogConstructor() throws LogConfigurationException {
        if (this.logConstructor == null) {
            discoverLogImplementation(getClass().getName());
        }
        return this.logConstructor;
    }

    protected boolean isJdk13LumberjackAvailable() {
        return isLogLibraryAvailable("Jdk13Lumberjack", LOGGING_IMPL_LUMBERJACK_LOGGER);
    }

    protected boolean isJdk14Available() {
        return isLogLibraryAvailable("Jdk14", LOGGING_IMPL_JDK14_LOGGER);
    }

    protected boolean isLog4JAvailable() {
        return isLogLibraryAvailable("Log4J", LOGGING_IMPL_LOG4J_LOGGER);
    }

    protected void logDiagnostic(String str) {
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.diagnosticPrefix);
            stringBuffer.append(str);
            logRawDiagnostic(stringBuffer.toString());
        }
    }

    protected Log newInstance(String str) throws LogConfigurationException {
        Log discoverLogImplementation;
        try {
            discoverLogImplementation = this.logConstructor == null ? discoverLogImplementation(str) : (Log) this.logConstructor.newInstance(str);
        } catch (InvocationTargetException e) {
            e = e;
        } catch (LogConfigurationException e2) {
            throw e2;
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (this.logMethod != null) {
                this.logMethod.invoke(discoverLogImplementation, this);
            }
            return discoverLogImplementation;
        } catch (InvocationTargetException e3) {
            e = e3;
            Throwable targetException = e.getTargetException();
            throw new LogConfigurationException(targetException == null ? e : targetException);
        } catch (LogConfigurationException e4) {
            throw e4;
        } catch (Throwable th2) {
            th = th2;
            handleThrowable(th);
            throw new LogConfigurationException(th);
        }
    }

    @Override // org.apache.commons.logging.LogFactory
    public void release() {
        logDiagnostic("Releasing all known loggers");
        this.instances.clear();
    }

    @Override // org.apache.commons.logging.LogFactory
    public void removeAttribute(String str) {
        this.attributes.remove(str);
    }

    @Override // org.apache.commons.logging.LogFactory
    public void setAttribute(String str, Object obj) {
        if (this.logConstructor != null) {
            logDiagnostic("setAttribute: call too late; configuration already performed.");
        }
        if (obj == null) {
            this.attributes.remove(str);
        } else {
            this.attributes.put(str, obj);
        }
        if (str.equals(LogFactory.TCCL_KEY)) {
            this.useTCCL = obj != null && Boolean.valueOf(obj.toString()).booleanValue();
        }
    }
}
