.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$51;
.super Landroid/os/CountDownTimer;
.source "AirCraftControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->showTimeDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;JJ)V
    .locals 0

    .line 5164
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$51;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 5181
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$51;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/livestreaming/LiveStreaming;->startLiveStreaming(Ljava/lang/String;)Z

    .line 5182
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$51;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LiveStatusView;->setVisibility(I)V

    .line 5183
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$51;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "AP03_STREAM_AUDIO_STATUS"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->setLiveStreamAudioMute(Z)V

    .line 5184
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/powervision/aircraft/utils/AudioRecordManager;->startRecordFrom(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 5167
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    long-to-int p2, p1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    return-void

    .line 5171
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$51;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5172
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$51;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 5174
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$51;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/base/utils/SoundPoolUtils;->getInstance(Landroid/content/Context;)Lcom/powervision/base/utils/SoundPoolUtils;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(II)V

    :cond_2
    return-void
.end method
