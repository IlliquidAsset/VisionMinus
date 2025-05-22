.class public interface abstract Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Body_FirmWare;
.super Ljava/lang/Object;
.source "PVW4FirmWareUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Body_FirmWare"
.end annotation


# virtual methods
.method public abstract body_query(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "mergeVersion"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/powervision/base/base/entity/BaseResultEntity<",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/BodyFirmWareModel;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "powerDolphinFirmwareQuery"
    .end annotation
.end method
