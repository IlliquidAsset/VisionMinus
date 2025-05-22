.class Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipFunctionScanArea_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$5;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$5;->val$target:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea_ViewBinding$5;->val$target:Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionScanArea;->ship_airline_rect()V

    return-void
.end method
