.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->updateFileSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

.field final synthetic val$num:I

.field final synthetic val$totalNum:I


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;II)V
    .locals 0

    .line 3224
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iput p2, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->val$num:I

    iput p3, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->val$totalNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateFileSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->val$num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " local num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->val$totalNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delayes"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    iget v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->val$num:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3230
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    goto :goto_0

    .line 3232
    :cond_0
    iget v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->val$totalNum:I

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    if-gt v1, v0, :cond_1

    .line 3233
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6100(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V

    .line 3234
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setPhotoGraphType(I)V

    .line 3239
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/base/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/model/impl/HandheldModel;

    invoke-virtual {v0}, Lcom/powervision/handheld/model/impl/HandheldModel;->getRecordTimeIntList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$1000(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/loopview/LoopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/views/loopview/LoopView;->getSelectedItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3240
    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$29;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3242
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v3

    invoke-static {v3}, Lcom/powervision/base/utils/UmengUtils;->getCameraSizeStr(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AP03_C_Time_Lapse"

    .line 3241
    invoke-static {v4, v0, v2, v3}, Lcom/powervision/base/utils/UmengUtils;->getLogBpHookMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 3240
    invoke-static {v1, v4, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
