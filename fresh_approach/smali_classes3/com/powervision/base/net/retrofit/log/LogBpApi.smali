.class public interface abstract Lcom/powervision/base/net/retrofit/log/LogBpApi;
.super Ljava/lang/Object;
.source "LogBpApi.java"


# virtual methods
.method public abstract buriedPointRequest(Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/PartMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "saveAppLog"
    .end annotation
.end method
