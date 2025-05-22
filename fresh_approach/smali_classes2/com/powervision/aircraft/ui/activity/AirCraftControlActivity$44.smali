.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetNormalClipsMode()V
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

    .line 4845
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4848
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RTL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$7700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "LAND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4851
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V

    goto :goto_1

    .line 4849
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V

    .line 4853
    :goto_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraMenuView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 4854
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    .line 4855
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/powervision/camera/camera/CameraManager;->setCameraCurrentStatus(I)V

    .line 4856
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 4857
    invoke-virtual {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 4858
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$44;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/warning/manager/WarningManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void
.end method
