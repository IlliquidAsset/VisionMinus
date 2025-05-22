.class Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$1;
.super Ljava/lang/Object;
.source "GuideConnectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->onDeviceConnectionChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 133
    const-class v0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    iget-object v1, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    invoke-static {v0, v1}, Lcom/powervision/base/utils/AppUtils;->isActivityTop(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity$1;->this$0:Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;

    const-class v3, Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/activity/GuideConnectDeviceActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
