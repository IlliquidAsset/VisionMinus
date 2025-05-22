.class Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;
.super Landroid/os/CountDownTimer;
.source "NewHandheldDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->showTimeDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;JJ)V
    .locals 0

    .line 4625
    iput-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 4643
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    iget-boolean v0, v0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->mLiveStreamEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/livestreaming/LiveStreaming;->getLiveStreamEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4645
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$7200(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/LiveStreaming;->startLiveStreaming(Ljava/lang/String;)Z

    .line 4646
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$7500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LiveStatusView;->setVisibility(I)V

    .line 4647
    iget-object v0, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v0}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$7500(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LiveStatusView;->setFlickerAnimation()V

    .line 4648
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->getInstance()Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {v1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$6400(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "AP03_STREAM_AUDIO_STATUS"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/powervision/handheld/utils/AudioRecordManager;->setLiveStreamAudioMute(Z)V

    .line 4649
    invoke-static {}, Lcom/powervision/handheld/utils/AudioRecordManager;->getInstance()Lcom/powervision/handheld/utils/AudioRecordManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/powervision/handheld/utils/AudioRecordManager;->startRecordFrom(I)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 4628
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    long-to-int p2, p1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    return-void

    .line 4632
    :cond_0
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4633
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {p1}, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;->access$4800(Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 4635
    iget-object p1, p0, Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity$41;->this$0:Lcom/powervision/handheld/ui/activity/NewHandheldDeviceActivity;

    invoke-static {p1}, Lcom/powervision/base/utils/SoundPoolUtils;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/SoundPoolUtils;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(II)V

    :cond_2
    return-void
.end method
