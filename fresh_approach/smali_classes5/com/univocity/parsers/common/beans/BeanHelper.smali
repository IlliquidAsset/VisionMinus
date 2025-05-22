.class public final Lcom/univocity/parsers/common/beans/BeanHelper;
.super Ljava/lang/Object;
.source "BeanHelper.java"


# static fields
.field private static final EMPTY:[Lcom/univocity/parsers/common/beans/PropertyWrapper;

.field static PROPERTY_NAME_METHOD:Ljava/lang/reflect/Method;

.field static PROPERTY_READ_METHOD:Ljava/lang/reflect/Method;

.field static PROPERTY_WRITE_METHOD:Ljava/lang/reflect/Method;

.field private static final beanInfoMethod:Ljava/lang/reflect/Method;

.field private static final descriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/WeakReference<",
            "[",
            "Lcom/univocity/parsers/common/beans/PropertyWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final introspectorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final propertyDescriptorMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/univocity/parsers/common/beans/PropertyWrapper;

    .line 39
    sput-object v1, Lcom/univocity/parsers/common/beans/BeanHelper;->EMPTY:[Lcom/univocity/parsers/common/beans/PropertyWrapper;

    .line 41
    invoke-static {}, Lcom/univocity/parsers/common/beans/BeanHelper;->findIntrospectorImplementationClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/univocity/parsers/common/beans/BeanHelper;->introspectorClass:Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/univocity/parsers/common/beans/BeanHelper;->getBeanInfoMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/univocity/parsers/common/beans/BeanHelper;->beanInfoMethod:Ljava/lang/reflect/Method;

    const-string v2, "getPropertyDescriptors"

    .line 43
    invoke-static {v2, v1, v0}, Lcom/univocity/parsers/common/beans/BeanHelper;->getMethod(Ljava/lang/String;Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->propertyDescriptorMethod:Ljava/lang/reflect/Method;

    const-string v1, "getWriteMethod"

    const/4 v2, 0x1

    .line 45
    invoke-static {v1, v0, v2}, Lcom/univocity/parsers/common/beans/BeanHelper;->getMethod(Ljava/lang/String;Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->PROPERTY_WRITE_METHOD:Ljava/lang/reflect/Method;

    .line 46
    sget-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->propertyDescriptorMethod:Ljava/lang/reflect/Method;

    const-string v1, "getReadMethod"

    invoke-static {v1, v0, v2}, Lcom/univocity/parsers/common/beans/BeanHelper;->getMethod(Ljava/lang/String;Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->PROPERTY_READ_METHOD:Ljava/lang/reflect/Method;

    .line 47
    sget-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->propertyDescriptorMethod:Ljava/lang/reflect/Method;

    const-string v1, "getName"

    invoke-static {v1, v0, v2}, Lcom/univocity/parsers/common/beans/BeanHelper;->getMethod(Ljava/lang/String;Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->PROPERTY_NAME_METHOD:Ljava/lang/reflect/Method;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->descriptors:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIntrospectorImplementationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.googlecode.openbeans.Introspector"

    .line 91
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :try_start_1
    const-string v0, "java.beans.Introspector"

    .line 94
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getBeanInfoMethod()Ljava/lang/reflect/Method;
    .locals 6

    .line 102
    sget-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->introspectorClass:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "getBeanInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 106
    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method private static getMethod(Ljava/lang/String;Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Class;

    .line 122
    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getPropertyDescriptors(Ljava/lang/Class;)[Lcom/univocity/parsers/common/beans/PropertyWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/univocity/parsers/common/beans/PropertyWrapper;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->propertyDescriptorMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 62
    sget-object p0, Lcom/univocity/parsers/common/beans/BeanHelper;->EMPTY:[Lcom/univocity/parsers/common/beans/PropertyWrapper;

    return-object p0

    .line 65
    :cond_0
    sget-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->descriptors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/common/beans/PropertyWrapper;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 72
    :try_start_0
    sget-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->beanInfoMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/univocity/parsers/common/beans/BeanHelper;->propertyDescriptorMethod:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 74
    array-length v1, v0

    new-array v1, v1, [Lcom/univocity/parsers/common/beans/PropertyWrapper;

    .line 76
    :goto_1
    array-length v2, v0

    if-ge v3, v2, :cond_2

    .line 77
    new-instance v2, Lcom/univocity/parsers/common/beans/PropertyWrapper;

    aget-object v4, v0, v3

    invoke-direct {v2, v4}, Lcom/univocity/parsers/common/beans/PropertyWrapper;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 81
    :catch_0
    sget-object v0, Lcom/univocity/parsers/common/beans/BeanHelper;->EMPTY:[Lcom/univocity/parsers/common/beans/PropertyWrapper;

    .line 83
    :goto_2
    sget-object v1, Lcom/univocity/parsers/common/beans/BeanHelper;->descriptors:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method
