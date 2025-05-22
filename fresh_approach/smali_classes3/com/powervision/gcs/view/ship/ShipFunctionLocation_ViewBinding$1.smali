.class Lcom/powervision/gcs/view/ship/ShipFunctionLocation_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipFunctionLocation_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipFunctionLocation_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionLocation;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipFunctionLocation_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/view/ship/ShipFunctionLocation;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionLocation_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionLocation;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionLocation_ViewBinding$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionLocation_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionLocation_ViewBinding$1;->val$target:Lcom/powervision/gcs/view/ship/ShipFunctionLocation;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionLocation_ViewBinding$1;->val$target:Lcom/powervision/gcs/view/ship/ShipFunctionLocation;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionLocation;->ship_detail_close_iv()V

    return-void
.end method
