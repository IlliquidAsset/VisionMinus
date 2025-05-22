.class public Lcom/powervision/gcs/view/ship/ShipGuideView_ViewBinding;
.super Ljava/lang/Object;
.source "ShipGuideView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/ShipGuideView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipGuideView;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/ShipGuideView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipGuideView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/ShipGuideView;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipGuideView;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->ship_video:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipVideoView;

    const-string v2, "field \'mVideo\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/ship/ShipVideoView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->text_known:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextKnown\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipGuideView;->mTextKnown:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->layout_video:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'mLayoutVideo\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipGuideView;->mLayoutVideo:Landroid/widget/RelativeLayout;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->text_mode:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextMode\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipGuideView;->mTextMode:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->text_mode_tip:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextModeTip\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipGuideView;->mTextModeTip:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->check_box:I

    const-class v1, Landroid/widget/CheckBox;

    const-string v2, "field \'mCheck\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipGuideView;->mCheck:Landroid/widget/CheckBox;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->image_next:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'mImageNext\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImageNext:Landroid/widget/ImageView;

    .line 36
    sget v0, Lcom/powervision/gcs/R$id;->image_pre:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'mImagePre\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImagePre:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipGuideView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipGuideView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/ShipGuideView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/ShipGuideView;

    .line 46
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mVideo:Lcom/powervision/gcs/view/ship/ShipVideoView;

    .line 47
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mTextKnown:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mLayoutVideo:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mTextMode:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mTextModeTip:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mCheck:Landroid/widget/CheckBox;

    .line 52
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImageNext:Landroid/widget/ImageView;

    .line 53
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/ShipGuideView;->mImagePre:Landroid/widget/ImageView;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
