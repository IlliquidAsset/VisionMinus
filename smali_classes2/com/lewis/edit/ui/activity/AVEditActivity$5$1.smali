.class Lcom/lewis/edit/ui/activity/AVEditActivity$5$1;
.super Lcom/cclink/obbdownloader/ObbHelperListener;
.source "AVEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/ui/activity/AVEditActivity$5;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lewis/edit/ui/activity/AVEditActivity$5;


# direct methods
.method constructor <init>(Lcom/lewis/edit/ui/activity/AVEditActivity$5;)V
    .locals 0

    .line 2738
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$5$1;->this$1:Lcom/lewis/edit/ui/activity/AVEditActivity$5;

    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    const-string v0, "AVEditActivity"

    .line 2747
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "obb=========obb un zip fail!"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2750
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$5$1;->this$1:Lcom/lewis/edit/ui/activity/AVEditActivity$5;

    iget-object v0, v0, Lcom/lewis/edit/ui/activity/AVEditActivity$5;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v0}, Lcom/powervision/resources/ObbResourcesUtil;->deleteObbUnzipTargetDirectory(Landroid/content/Context;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    const-string v0, "AVEditActivity"

    .line 2741
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "obb=========obb un zip success!"

    invoke-interface {v0, v2, v1}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
