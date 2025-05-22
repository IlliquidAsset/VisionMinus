.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$43;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->resetNormalSurroundMode()V
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

    .line 4831
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$43;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4834
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$43;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Z)V

    .line 4835
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$43;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/views/CameraMenuView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AnimUtils;->hideOrShowRightView(Landroid/view/View;I)V

    .line 4836
    new-instance v0, Lcom/powervision/base/warning/HoverMessage;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$43;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    .line 4837
    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Msg_26_5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/powervision/base/warning/HoverMessage;-><init>(ILjava/lang/String;)V

    .line 4838
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$43;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/warning/manager/WarningManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/base/warning/manager/WarningManager;->addView(Lcom/powervision/base/warning/HoverMessage;)V

    return-void
.end method
