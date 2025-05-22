.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipCommonMaintenanceFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding$1;->val$target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment_ViewBinding$1;->val$target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonMaintenanceFragment;->rl_adjust_item()V

    return-void
.end method
