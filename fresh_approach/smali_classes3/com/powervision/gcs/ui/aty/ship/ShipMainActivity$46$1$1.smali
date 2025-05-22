.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;->onSailModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;I)V
    .locals 0

    .line 5301
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;

    iput p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5304
    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1$1;->val$mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5305
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    goto :goto_0

    .line 5307
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/manager/ShipWarningManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/utils/ShipMessageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getModeErrorMsg()Lcom/powervision/gcs/model/ship/ShipWarning;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    .line 5309
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1$1;->this$2:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$46$1$1;->val$mode:I

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)V

    return-void
.end method
