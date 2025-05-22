.class Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity$1;
.super Ljava/lang/Object;
.source "DeviceLinkActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;->requestPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/tbruyelle/rxpermissions2/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/tbruyelle/rxpermissions2/Permission;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is granted."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;

    const-class v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied. More info should be provided."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    check-cast p1, Lcom/tbruyelle/rxpermissions2/Permission;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity$1;->accept(Lcom/tbruyelle/rxpermissions2/Permission;)V

    return-void
.end method
