.class Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5$1;
.super Ljava/lang/Object;
.source "ShipSonarSetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->getAirDl01OperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->onClick()V

    .line 278
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipSonarSetFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_GeneralSetting_88:I

    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/ToastUtil;->longToast(Landroid/content/Context;I)V

    return-void
.end method
