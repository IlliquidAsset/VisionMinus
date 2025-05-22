.class Lcom/powervision/gcs/view/ship/ShipFunctionHideView$1;
.super Ljava/lang/Object;
.source "ShipFunctionHideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipFunctionHideView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionHideView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->access$000(Lcom/powervision/gcs/view/ship/ShipFunctionHideView;)Lcom/powervision/gcs/view/ship/ShipFunctionHideView$IShowContentListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    invoke-static {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->access$000(Lcom/powervision/gcs/view/ship/ShipFunctionHideView;)Lcom/powervision/gcs/view/ship/ShipFunctionHideView$IShowContentListener;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionHideView$1;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionHideView;

    invoke-static {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView;->access$100(Lcom/powervision/gcs/view/ship/ShipFunctionHideView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/ship/ShipFunctionHideView$IShowContentListener;->onShowContent(I)V

    :cond_0
    return-void
.end method
