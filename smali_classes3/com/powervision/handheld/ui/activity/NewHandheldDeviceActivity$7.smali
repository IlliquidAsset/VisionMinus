.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Lcom/powervision/base/views/loopview/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->setDelayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

.field final synthetic val$recordItems:Ljava/util/List;

.field final synthetic val$recordTimeMap:Ljava/util/HashMap;

.field final synthetic val$shutterItems:Ljava/util/List;

.field final synthetic val$times:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iput-object p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->val$recordTimeMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->val$times:Ljava/util/List;

    iput-object p4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->val$recordItems:Ljava/util/List;

    iput-object p5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->val$shutterItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 7

    .line 803
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/loopview/LoopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/loopview/LoopView;->getCurrentItem()Ljava/lang/String;

    move-result-object v0

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loop"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->val$recordTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 806
    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/loopview/LoopView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/powervision/base/views/loopview/LoopView;->setAvailableData(Ljava/util/List;)V

    .line 807
    iget-object v3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v3}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/loopview/LoopView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/base/views/loopview/LoopView;->getCurrentItem()Ljava/lang/String;

    move-result-object v3

    .line 808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shutterStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->val$times:Ljava/util/List;

    iget-object v6, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->val$recordItems:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->time:I

    .line 810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "indexindex  time  index  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 811
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v4, p1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->time:I

    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v5, v5, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    div-int/2addr v4, v5

    iget-object v5, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v5, v5, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->fps:I

    div-int/2addr v4, v5

    iput v4, p1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    .line 812
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v4, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v4, v4, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    invoke-static {v4}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "shutterStr = go"

    .line 814
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->val$recordTimeMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 816
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->val$shutterItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutterIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$900(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/loopview/LoopView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/loopview/LoopView;->smoothScrollToItem(I)V

    goto :goto_0

    .line 820
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1300(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v1, v1, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->shutter:I

    iget-object v2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$7;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget v2, v2, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->result:I

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->setCaptureMode(IIIZ)V

    :goto_0
    return-void
.end method
