.class Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$1;
.super Ljava/lang/Object;
.source "ShipMagnetAdjustFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMagnetAdjustFragment;->dismissAllowingStateLoss()V

    return-void
.end method
