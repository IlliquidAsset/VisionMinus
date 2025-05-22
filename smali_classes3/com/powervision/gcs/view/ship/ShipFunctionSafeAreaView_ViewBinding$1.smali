.class Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipFunctionSafeAreaView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding$1;->val$target:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView_ViewBinding$1;->val$target:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->ship_safe_detail_hide()V

    return-void
.end method
