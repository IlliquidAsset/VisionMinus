.class Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$1;
.super Ljava/lang/Object;
.source "ShipFunctionScanArea.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 115
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->access$000(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->access$000(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea$IFunctionListener;->onFishCheck(Z)V

    :cond_0
    return-void
.end method
