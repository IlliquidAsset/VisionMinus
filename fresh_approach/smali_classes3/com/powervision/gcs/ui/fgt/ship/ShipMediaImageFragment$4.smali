.class Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;
.super Ljava/lang/Object;
.source "ShipMediaImageFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel$OnMediaListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetListEnd()V
    .locals 2

    const-string v0, "ShipMediaImageFragment"

    const-string v1, "onGetListEnd: "

    .line 636
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onImageListAdd(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;)V"
        }
    .end annotation

    .line 600
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;

    .line 601
    new-instance v2, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-direct {v2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;-><init>()V

    .line 602
    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setFilename(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setPath(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getThmfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setThmfile(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getCreattime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setCreattime(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setSize(J)V

    .line 607
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    iget-object v1, v1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mTempList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_0

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageListAdd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    iget-object v1, v1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mTempList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShipMediaImageFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageListAdd listModel.isHasReachBottom(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageListAdd mTempList.size(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    iget-object v1, v1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mTempList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->isHasReachBottom()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 616
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mTempList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 617
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 619
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mTempList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0xa

    if-lt p1, v1, :cond_2

    .line 620
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    iget-object p1, p1, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->mTempList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 621
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 623
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

.method public onLoadError()V
    .locals 2

    const-string v0, "ShipMediaImageFragment"

    const-string v1, "onLoadError: "

    .line 646
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTotalCountGet(I)V
    .locals 3

    .line 594
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onVideoListAdd(Ljava/util/List;)V
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
