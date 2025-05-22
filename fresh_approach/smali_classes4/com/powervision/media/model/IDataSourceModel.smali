.class public Lcom/powervision/media/model/IDataSourceModel;
.super Ljava/lang/Object;
.source "IDataSourceModel.java"

# interfaces
.implements Lcom/powervision/base/base/BaseModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageData()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;>;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/powervision/media/model/IDataSourceModel$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/model/IDataSourceModel$1;-><init>(Lcom/powervision/media/model/IDataSourceModel;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method
