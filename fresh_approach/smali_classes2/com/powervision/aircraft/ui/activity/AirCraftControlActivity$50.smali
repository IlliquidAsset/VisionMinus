.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$50;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/dialog/LiveStreamDialog$AudioStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->openLiveDialog(Landroid/util/SparseIntArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 5145
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$50;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLiveStreamAudioEnable(Z)V
    .locals 3

    .line 5148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLiveStreamAudioMute: isAudioEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirCraftCo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->setLiveStreamAudioMute(Z)V

    .line 5150
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$50;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AP03_STREAM_AUDIO_STATUS"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5151
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$50;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5152
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$50;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/LiveStatusView;->isOpenVoice(Z)V

    :cond_0
    return-void
.end method
