.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$40;
.super Ljava/lang/Object;
.source "NewHandheldDeviceActivity.java"

# interfaces
.implements Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showLiveStreamDialog(Landroid/util/SparseIntArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)V
    .locals 0

    .line 4606
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$40;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLiveStreamAudioEnable(Z)V
    .locals 3

    .line 4609
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$40;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget-object v0, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liveStreamDialog: isAutioEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/livestreaming/tools/LogTools;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4610
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->getInstance()Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->setLiveStreamAudioMute(Z)V

    .line 4611
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$40;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AP03_STREAM_AUDIO_STATUS"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4612
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$40;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$7500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4613
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$40;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$7500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/LiveStatusView;->isOpenVoice(Z)V

    :cond_0
    return-void
.end method
