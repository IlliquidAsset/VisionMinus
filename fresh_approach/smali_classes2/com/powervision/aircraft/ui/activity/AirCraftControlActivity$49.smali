.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lcom/powervision/base/dialog/LiveStreamDialog$LiveStreamCallback;


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

    .line 5113
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextStep(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5116
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12202(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5117
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12302(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public startPushStream()V
    .locals 3

    const-string v0, "AirCraftCo"

    const-string v1, "startPushStream()"

    .line 5122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5124
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5125
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12402(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 5127
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12502(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 5128
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5129
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5130
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5131
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12402(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5133
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$12600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method public stopPushStream()V
    .locals 2

    const-string v0, "AirCraftCo"

    const-string v1, "stopPushStream()"

    .line 5138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/livestreaming/LiveStreaming;->stopLiveStreaming()Z

    .line 5140
    invoke-static {}, Lcom/powervision/aircraft/utils/AudioRecordManager;->getInstance()Lcom/powervision/aircraft/utils/AudioRecordManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/utils/AudioRecordManager;->stopRecordFrom(I)V

    .line 5141
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/views/LiveStatusView;->onStopLiveStreamTimer()V

    .line 5142
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$49;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$5500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/views/LiveStatusView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/LiveStatusView;->setVisibility(I)V

    return-void
.end method
