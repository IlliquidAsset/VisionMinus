.class public interface abstract Lcom/powervision/base/db/api/DBApi;
.super Ljava/lang/Object;
.source "DBApi.java"


# static fields
.field public static final URL_NO_FLY_ZONE:Ljava/lang/String; = "http://supplier.powervision.me:9995/"


# virtual methods
.method public abstract updateDb(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "maxTime"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/powervision/base/db/model/GeoOnLineData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "queryBaseList"
    .end annotation
.end method
