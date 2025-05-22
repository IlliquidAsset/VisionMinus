.class Lcom/powervision/home/ui/activity/HomeActivity$12;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/HomeActivity;->lambda$restartApp$3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/HomeActivity;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/powervision/home/ui/activity/HomeActivity$12;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$12;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/powervision/home/ui/activity/HomeActivity;->overridePendingTransition(II)V

    .line 884
    iget-object v0, p0, Lcom/powervision/home/ui/activity/HomeActivity$12;->this$0:Lcom/powervision/home/ui/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/powervision/home/ui/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 885
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
