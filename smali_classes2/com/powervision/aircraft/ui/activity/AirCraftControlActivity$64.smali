.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;
.super Ljava/util/TimerTask;
.source "AirCraftControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startTemperatureTask()V
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

    .line 6161
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$AirCraftControlActivity$64()V
    .locals 2

    .line 6168
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    .line 6169
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 6164
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14504(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    .line 6165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ,,,,,,,,,,,,timerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "task_tem"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6166
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$14500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    const/16 v1, 0xb4

    if-lt v0, v1, :cond_0

    .line 6167
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$64$qpJoDegJsldnTTik2jN08igvcbg;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$64$qpJoDegJsldnTTik2jN08igvcbg;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$64;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
