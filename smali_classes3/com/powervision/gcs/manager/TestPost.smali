.class public Lcom/powervision/gcs/manager/TestPost;
.super Ljava/lang/Object;
.source "TestPost.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public testBody()V
    .locals 4

    .line 24
    invoke-static {}, Lcom/powervision/base/net/RetrofitHelper;->getRetrofitHelper()Lcom/powervision/base/net/RetrofitHelper;

    move-result-object v0

    const-class v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Remote_FirmWare;

    invoke-virtual {v0, v1}, Lcom/powervision/base/net/RetrofitHelper;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Remote_FirmWare;

    const-string v1, "PVW4RC"

    const-string v2, "remote_7"

    const-string v3, "DL01_5,MCU_5,WIFI_5"

    invoke-interface {v0, v1, v2, v2, v3}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$Remote_FirmWare;->remote_query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/powervision/base/net/observable/ObservableLoader;->getObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/manager/TestPost$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/manager/TestPost$1;-><init>(Lcom/powervision/gcs/manager/TestPost;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
