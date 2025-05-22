.class public Lcom/powervision/gcs/view/ship/ShipTopSignalView_ViewBinding;
.super Ljava/lang/Object;
.source "ShipTopSignalView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipTopSignalView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipTopSignalView;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipTopSignalView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipTopSignalView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipTopSignalView;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 27
    sget v0, Lcom/powervision/gcs/R$id;->iv_signal:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivSignal\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->ivSignal:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/powervision/gcs/R$id;->tv_content:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvContent\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->tvContent:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->iv_content:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivContent\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->ivContent:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipTopSignalView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipTopSignalView;

    .line 39
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->ivSignal:Landroid/widget/ImageView;

    .line 40
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->tvContent:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipTopSignalView;->ivContent:Landroid/widget/ImageView;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
