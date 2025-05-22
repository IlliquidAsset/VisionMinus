.class Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;
.super Ljava/lang/Object;
.source "ShipMediaVideoFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetListEnd()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onImageListAdd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onLoadError()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTotalCountGet(I)V
    .locals 3

    .line 326
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onVideoListAdd(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;)V"
        }
    .end annotation

    .line 337
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;

    .line 338
    new-instance v1, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-direct {v1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;-><init>()V

    .line 339
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setFilename(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setPath(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getThmfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setThmfile(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getCreattime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setCreattime(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setSize(J)V

    .line 345
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mTempList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$500(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 351
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mTempList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 352
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 354
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mTempList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0xa

    if-lt p1, v1, :cond_2

    .line 355
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->mTempList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 356
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 358
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method
