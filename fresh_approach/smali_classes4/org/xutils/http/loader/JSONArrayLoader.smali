.class Lorg/xutils/http/loader/JSONArrayLoader;
.super Lorg/xutils/http/loader/Loader;
.source "JSONArrayLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private resultStr:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    const-string v0, "UTF-8"

    .line 17
    iput-object v0, p0, Lorg/xutils/http/loader/JSONArrayLoader;->charset:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lorg/xutils/http/loader/JSONArrayLoader;->resultStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/JSONArrayLoader;->load(Lorg/xutils/http/request/UriRequest;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 38
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lorg/xutils/http/loader/JSONArrayLoader;->charset:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/loader/JSONArrayLoader;->resultStr:Ljava/lang/String;

    .line 39
    new-instance p1, Lorg/json/JSONArray;

    iget-object v0, p0, Lorg/xutils/http/loader/JSONArrayLoader;->resultStr:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/JSONArrayLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getTextContent()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/xutils/http/loader/JSONArrayLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/JSONArrayLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/xutils/http/loader/JSONArrayLoader;->resultStr:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/xutils/http/loader/JSONArrayLoader;->saveStringCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;)V

    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iput-object p1, p0, Lorg/xutils/http/loader/JSONArrayLoader;->charset:Ljava/lang/String;

    :cond_0
    return-void
.end method
