.class Lcom/lewis/edit/ui/activity/AVEditActivity$5;
.super Lcom/cclink/obbdownloader/ObbHelperListener;
.source "AVEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewis/edit/ui/activity/AVEditActivity;->checkExpansionFilesDelivered()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;


# direct methods
.method constructor <init>(Lcom/lewis/edit/ui/activity/AVEditActivity;)V
    .locals 0

    .line 2730
    iput-object p1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$5;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-direct {p0}, Lcom/cclink/obbdownloader/ObbHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 2737
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$5;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v0}, Lcom/powervision/resources/ObbResourcesUtil;->getObbParseDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2738
    iget-object v1, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$5;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    invoke-static {v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$1100(Lcom/lewis/edit/ui/activity/AVEditActivity;)Lcom/cclink/obbdownloader/ObbHelper;

    move-result-object v1

    new-instance v2, Lcom/lewis/edit/ui/activity/AVEditActivity$5$1;

    invoke-direct {v2, p0}, Lcom/lewis/edit/ui/activity/AVEditActivity$5$1;-><init>(Lcom/lewis/edit/ui/activity/AVEditActivity$5;)V

    invoke-virtual {v1, v0, v2}, Lcom/cclink/obbdownloader/ObbHelper;->unzipMainobbToFolder(Ljava/lang/String;Lcom/cclink/obbdownloader/ObbHelperListener;)V

    .line 2754
    iget-object v0, p0, Lcom/lewis/edit/ui/activity/AVEditActivity$5;->this$0:Lcom/lewis/edit/ui/activity/AVEditActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lewis/edit/ui/activity/AVEditActivity;->access$1202(Lcom/lewis/edit/ui/activity/AVEditActivity;Z)Z

    return-void
.end method
