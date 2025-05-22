.class Lcom/powervision/gcs/view/SonarWindowView$10;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/SonarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarWindowView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarWindowView;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->clearMemory()V

    return-void
.end method

.method public initTheHisoryMode()V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->initTheHistory()V

    :cond_0
    return-void
.end method

.method public needReplay()V
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->setNeedRePlay(Z)V

    .line 869
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;->changeToPlayHistoryMode()V

    :cond_0
    return-void
.end method

.method public prepareHalfisDone()V
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->setPrepareing(Z)V

    .line 878
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;->stopLoadingView()V

    .line 879
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$000(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/FishImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    return-void
.end method

.method public preparingBegin()V
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->setPrepareing(Z)V

    return-void
.end method

.method public preparingOver()V
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->setPrepareing(Z)V

    .line 816
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$000(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/FishImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/FishImageView;->postInvalidate()V

    .line 817
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;->stopLoadingView()V

    .line 818
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$200(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/Texture/TextureVerticalView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigNewDatas(I)V

    return-void
.end method

.method public readHistory(Ljava/lang/String;)V
    .locals 9

    const/16 v0, 0x1f4

    new-array v0, v0, [B

    const/16 v7, 0x14

    new-array v8, v7, [F

    .line 774
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v1, v1, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    sget v4, Lcom/powervision/gcs/utils/SonarStateHelper;->sensivity:I

    sget v6, Lcom/powervision/gcs/utils/SonarStateHelper;->color_Style:I

    move-object v2, v0

    move-object v3, p1

    move-object v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/powervision/gcs/Texture/SonarTextureRender;->readHistory([BLjava/lang/String;I[FI)Z

    .line 776
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {p1}, Lcom/powervision/gcs/view/SonarWindowView;->access$200(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/Texture/TextureVerticalView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigBytes([B)V

    const/4 p1, 0x0

    .line 777
    aget v1, v8, p1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :goto_0
    const/4 v1, 0x2

    if-ge p1, v7, :cond_0

    .line 779
    aget v3, v8, p1

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_0

    .line 780
    iget-object v3, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    aget v4, v8, p1

    invoke-static {}, Lcom/powervision/gcs/manager/DeepManager;->getInstance()Lcom/powervision/gcs/manager/DeepManager;

    move-result-object v5

    .line 781
    invoke-virtual {v5}, Lcom/powervision/gcs/manager/DeepManager;->getNowRule()F

    move-result v5

    .line 780
    invoke-virtual {v3, v1, v4, v5}, Lcom/powervision/gcs/view/SonarWindowView;->addFish(IFF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 786
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object p1, p1, Lcom/powervision/gcs/view/SonarWindowView;->findFishListener:Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;

    if-eqz p1, :cond_1

    .line 787
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object p1, p1, Lcom/powervision/gcs/view/SonarWindowView;->findFishListener:Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;

    invoke-interface {p1, v1}, Lcom/powervision/gcs/view/SonarWindowView$FindFishListener;->updata(I)V

    .line 792
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {p1}, Lcom/powervision/gcs/view/SonarWindowView;->access$000(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/FishImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/view/FishImageView;->doUpDateFish()V

    .line 793
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object p1, p1, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {p1}, Lcom/powervision/gcs/Texture/SonarTextureRender;->getDeep()F

    move-result p1

    .line 794
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v1, v1, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v1}, Lcom/powervision/gcs/Texture/SonarTextureRender;->getHeightMax()F

    move-result v1

    .line 796
    iget-object v2, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-virtual {v2}, Lcom/powervision/gcs/view/SonarWindowView;->isPrepareing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 797
    invoke-static {}, Lcom/powervision/gcs/manager/DeepManager;->getInstance()Lcom/powervision/gcs/manager/DeepManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/powervision/gcs/manager/DeepManager;->computeTheDeepAfterTheMath(FF)V

    .line 800
    :cond_2
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v1, v1, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    if-nez v1, :cond_3

    return-void

    .line 803
    :cond_3
    sget-boolean v1, Lcom/powervision/gcs/utils/SonarStateHelper;->VerticalFlasher:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-virtual {v1}, Lcom/powervision/gcs/view/SonarWindowView;->isPrepareing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v1, v1, Lcom/powervision/gcs/view/SonarWindowView;->listener:Lcom/powervision/gcs/view/SonarWindowView$OnOtherViewStateChangeListener;

    if-eqz v1, :cond_4

    .line 805
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v1}, Lcom/powervision/gcs/view/SonarWindowView;->access$200(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/Texture/TextureVerticalView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setDeep(F)V

    .line 806
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {p1}, Lcom/powervision/gcs/view/SonarWindowView;->access$200(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/Texture/TextureVerticalView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigBytes([B)V

    .line 807
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {p1}, Lcom/powervision/gcs/view/SonarWindowView;->access$200(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/Texture/TextureVerticalView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setRawSigNewDatas(I)V

    goto :goto_1

    .line 809
    :cond_4
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$200(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/Texture/TextureVerticalView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/Texture/TextureVerticalView;->setDeep(F)V

    :goto_1
    return-void
.end method

.method public threadIsOver()V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$500(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->setHistoryThreadListener(Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;)V

    .line 834
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->access$502(Lcom/powervision/gcs/view/SonarWindowView;Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;)Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    .line 835
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$600(Lcom/powervision/gcs/view/SonarWindowView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    new-instance v2, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    invoke-direct {v2, v1}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;-><init>(Lcom/powervision/gcs/view/SonarWindowView$1;)V

    invoke-static {v0, v2}, Lcom/powervision/gcs/view/SonarWindowView;->access$502(Lcom/powervision/gcs/view/SonarWindowView;Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;)Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    .line 837
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$500(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v1}, Lcom/powervision/gcs/view/SonarWindowView;->access$700(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/model/History;

    move-result-object v1

    iget-object v1, v1, Lcom/powervision/gcs/model/History;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->setPath(Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$500(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v1, v1, Lcom/powervision/gcs/view/SonarWindowView;->historyThreadListener:Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->setHistoryThreadListener(Lcom/powervision/gcs/view/SonarWindowView$HistoryThread$HistoryThreadListener;)V

    .line 840
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$700(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/model/History;

    move-result-object v0

    iget v0, v0, Lcom/powervision/gcs/model/History;->lineLen:I

    const/16 v1, 0x12c

    const/16 v2, 0x19

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$700(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/model/History;

    move-result-object v0

    iget v0, v0, Lcom/powervision/gcs/model/History;->lineLen:I

    div-int/lit8 v0, v0, 0xa

    .line 844
    iget-object v1, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v1}, Lcom/powervision/gcs/view/SonarWindowView;->access$700(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/model/History;

    move-result-object v1

    iget v1, v1, Lcom/powervision/gcs/model/History;->lineLen:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 849
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$500(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->setLimate(I)V

    .line 850
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$500(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/SonarWindowView$HistoryThread;->start()V

    goto :goto_1

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget-object v0, v0, Lcom/powervision/gcs/view/SonarWindowView;->sonarRender:Lcom/powervision/gcs/Texture/SonarTextureRender;

    invoke-virtual {v0}, Lcom/powervision/gcs/Texture/SonarTextureRender;->clearMemory()V

    .line 853
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/SonarWindowView;->access$702(Lcom/powervision/gcs/view/SonarWindowView;Lcom/powervision/gcs/model/History;)Lcom/powervision/gcs/model/History;

    :goto_1
    return-void
.end method

.method public updateTheLineCount(I)V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarWindowView$10;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-static {v0}, Lcom/powervision/gcs/view/SonarWindowView;->access$000(Lcom/powervision/gcs/view/SonarWindowView;)Lcom/powervision/gcs/view/FishImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/FishImageView;->updateTheLineCount(I)V

    return-void
.end method
