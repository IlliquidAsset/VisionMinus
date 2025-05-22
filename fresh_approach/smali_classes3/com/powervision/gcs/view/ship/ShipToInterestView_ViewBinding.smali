.class public Lcom/powervision/gcs/view/ship/ShipToInterestView_ViewBinding;
.super Ljava/lang/Object;
.source "ShipToInterestView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipToInterestView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipToInterestView;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipToInterestView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipToInterestView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipToInterestView;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    .line 26
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_hide:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextHide\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextHide:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/powervision/gcs/R$id;->tv_function_pause:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextStart\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/powervision/gcs/R$id;->text_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextTile\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextTile:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->text_tips:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextTips\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextTips:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    .line 39
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextHide:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextTile:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextTips:Landroid/widget/TextView;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
