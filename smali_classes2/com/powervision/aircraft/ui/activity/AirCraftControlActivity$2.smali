.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->doResume()V
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

    .line 607
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 610
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_4

    .line 611
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 614
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 617
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 620
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x3e8

    .line 624
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 626
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 628
    :goto_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$2;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$408(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method
