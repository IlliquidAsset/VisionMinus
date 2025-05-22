.class public Lcom/powervision/gcs/view/ship/ShipLMHView_ViewBinding;
.super Ljava/lang/Object;
.source "ShipLMHView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipLMHView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipLMHView;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipLMHView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipLMHView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipLMHView;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipLMHView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipLMHView;

    .line 27
    sget v0, Lcom/powervision/gcs/R$id;->rbL:I

    const-class v1, Landroid/widget/RadioButton;

    const-string v2, "field \'rbL\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbL:Landroid/widget/RadioButton;

    .line 28
    sget v0, Lcom/powervision/gcs/R$id;->rbM:I

    const-class v1, Landroid/widget/RadioButton;

    const-string v2, "field \'rbM\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbM:Landroid/widget/RadioButton;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->rbH:I

    const-class v1, Landroid/widget/RadioButton;

    const-string v2, "field \'rbH\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbH:Landroid/widget/RadioButton;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->rg:I

    const-class v1, Landroid/widget/RadioGroup;

    const-string v2, "field \'rg\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p1, Lcom/powervision/gcs/view/ship/ShipLMHView;->rg:Landroid/widget/RadioGroup;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipLMHView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipLMHView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipLMHView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipLMHView;

    .line 40
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbL:Landroid/widget/RadioButton;

    .line 41
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbM:Landroid/widget/RadioButton;

    .line 42
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rbH:Landroid/widget/RadioButton;

    .line 43
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipLMHView;->rg:Landroid/widget/RadioGroup;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
