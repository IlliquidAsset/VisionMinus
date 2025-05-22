.class Lcom/powervision/media/model/IDataSourceModel$1;
.super Ljava/lang/Object;
.source "IDataSourceModel.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/model/IDataSourceModel;->getImageData()Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Ljava/util/ArrayList<",
        "Lcom/powervision/base/model/MediaModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/model/IDataSourceModel;


# direct methods
.method constructor <init>(Lcom/powervision/media/model/IDataSourceModel;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/powervision/media/model/IDataSourceModel$1;->this$0:Lcom/powervision/media/model/IDataSourceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v1, Lcom/powervision/media/utils/MediaScanner;

    invoke-direct {v1}, Lcom/powervision/media/utils/MediaScanner;-><init>()V

    new-instance v2, Lcom/powervision/media/model/IDataSourceModel$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/powervision/media/model/IDataSourceModel$1$1;-><init>(Lcom/powervision/media/model/IDataSourceModel$1;Ljava/util/List;Lio/reactivex/FlowableEmitter;)V

    invoke-virtual {v1, v2}, Lcom/powervision/media/utils/MediaScanner;->scanImage(Lcom/powervision/media/utils/MediaScanner$ScannerListener;)V

    return-void
.end method
