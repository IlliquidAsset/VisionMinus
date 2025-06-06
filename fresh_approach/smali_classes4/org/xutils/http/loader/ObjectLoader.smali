.class Lorg/xutils/http/loader/ObjectLoader;
.super Lorg/xutils/http/loader/Loader;
.source "ObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final innerLoader:Lorg/xutils/http/loader/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/http/loader/Loader<",
            "*>;"
        }
    .end annotation
.end field

.field private final objectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final objectType:Ljava/lang/reflect/Type;

.field private final parser:Lorg/xutils/http/app/ResponseParser;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    .line 31
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    const-string v1, "not support callback type "

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    goto :goto_0

    .line 33
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_6

    .line 37
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    .line 42
    :goto_0
    const-class v0, Ljava/util/List;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 43
    iget-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    const-class v0, Ljava/util/List;

    invoke-static {p1, v0, v2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 45
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 46
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_1

    .line 47
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_2

    .line 51
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    .line 54
    :goto_1
    const-class v3, Lorg/xutils/http/annotation/HttpResponse;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/annotation/HttpResponse;

    goto :goto_2

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    const-class v3, Lorg/xutils/http/annotation/HttpResponse;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/annotation/HttpResponse;

    :goto_2
    if-eqz v0, :cond_5

    .line 60
    :try_start_0
    invoke-interface {v0}, Lorg/xutils/http/annotation/HttpResponse;->parser()Ljava/lang/Class;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xutils/http/app/ResponseParser;

    iput-object v3, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    .line 62
    const-class v3, Lorg/xutils/http/app/ResponseParser;

    .line 63
    invoke-static {v0, v3, v2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lorg/xutils/http/loader/LoaderFactory;->getLoader(Ljava/lang/reflect/Type;)Lorg/xutils/http/loader/Loader;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->innerLoader:Lorg/xutils/http/loader/Loader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    instance-of v0, v0, Lorg/xutils/http/loader/ObjectLoader;

    if-nez v0, :cond_4

    return-void

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "create parser error"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 68
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found @HttpResponse from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    invoke-virtual {p1, v0}, Lorg/xutils/http/request/UriRequest;->setResponseParser(Lorg/xutils/http/app/ResponseParser;)V

    .line 90
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->innerLoader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-interface {v0, v1, v2, p1}, Lorg/xutils/http/app/ResponseParser;->parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->innerLoader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-interface {v0, v1, v2, p1}, Lorg/xutils/http/app/ResponseParser;->parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "use constructor create ObjectLoader."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->innerLoader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->save2Cache(Lorg/xutils/http/request/UriRequest;)V

    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->innerLoader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->setParams(Lorg/xutils/http/RequestParams;)V

    return-void
.end method
