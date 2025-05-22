.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;
.super Ljava/util/TimerTask;
.source "AirCraftControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->startTimerTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$oneKeyMode:Z


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V
    .locals 0

    .line 3835
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-boolean p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->val$oneKeyMode:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3838
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    new-instance v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28$1;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$28;)V

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
