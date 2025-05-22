.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;->onSailModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;I)V
    .locals 0

    .line 1724
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;

    iput p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1727
    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4$1;->val$mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    goto :goto_0

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$3202(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    .line 1731
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->disableViews()V

    .line 1735
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$1500(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_AI_9:I

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->setActionText(I)V

    .line 1737
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$4$1;->val$mode:I

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$2900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)V

    return-void
.end method
