.class public final Lcom/univocity/parsers/common/beans/PropertyWrapper;
.super Ljava/lang/Object;
.source "PropertyWrapper.java"


# static fields
.field private static final NO_METHOD:Ljava/lang/reflect/Method;

.field private static final NO_NAME:Ljava/lang/String; = "!!NO_NAME!!"


# instance fields
.field private name:Ljava/lang/String;

.field private final propertyDescriptor:Ljava/lang/Object;

.field private readMethod:Ljava/lang/reflect/Method;

.field private writeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->getNullMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->NO_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->propertyDescriptor:Ljava/lang/Object;

    return-void
.end method

.method private static getNullMethod()Ljava/lang/reflect/Method;
    .locals 3

    .line 92
    :try_start_0
    const-class v0, Ljava/lang/Object;

    const-string v1, "hashCode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 84
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->propertyDescriptor:Ljava/lang/Object;

    sget-object v1, Lcom/univocity/parsers/common/beans/BeanHelper;->PROPERTY_NAME_METHOD:Ljava/lang/reflect/Method;

    invoke-static {v0, v1}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->name:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->name:Ljava/lang/String;

    const-string v1, "!!NO_NAME!!"

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final getReadMethod()Ljava/lang/reflect/Method;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->readMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->propertyDescriptor:Ljava/lang/Object;

    sget-object v1, Lcom/univocity/parsers/common/beans/BeanHelper;->PROPERTY_READ_METHOD:Ljava/lang/reflect/Method;

    invoke-static {v0, v1}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->readMethod:Ljava/lang/reflect/Method;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->readMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/univocity/parsers/common/beans/PropertyWrapper;->NO_METHOD:Ljava/lang/reflect/Method;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final getWriteMethod()Ljava/lang/reflect/Method;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->writeMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->propertyDescriptor:Ljava/lang/Object;

    sget-object v1, Lcom/univocity/parsers/common/beans/BeanHelper;->PROPERTY_WRITE_METHOD:Ljava/lang/reflect/Method;

    invoke-static {v0, v1}, Lcom/univocity/parsers/common/beans/PropertyWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->writeMethod:Ljava/lang/reflect/Method;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/beans/PropertyWrapper;->writeMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/univocity/parsers/common/beans/PropertyWrapper;->NO_METHOD:Ljava/lang/reflect/Method;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method
