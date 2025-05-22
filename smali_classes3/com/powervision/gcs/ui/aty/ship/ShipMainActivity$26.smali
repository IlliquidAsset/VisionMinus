.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$26;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->DolphinSysError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 3313
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$26;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3316
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$26;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/utils/ShipMessageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->showSysError()Lcom/powervision/gcs/model/ship/ShipWarning;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3322
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipWarning;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3324
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$26;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->shipTopView:Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;

    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipWarning;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopView;->setErrorMsgTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 3326
    :cond_0
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$26;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    :cond_1
    :goto_0
    return-void
.end method
