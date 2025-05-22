.class Lorg/xutils/http/loader/IntegerLoader;
.super Lorg/xutils/http/loader/Loader;
.source "IntegerLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 19
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/IntegerLoader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/IntegerLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Lorg/xutils/http/loader/IntegerLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/IntegerLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 0

    return-void
.end method
