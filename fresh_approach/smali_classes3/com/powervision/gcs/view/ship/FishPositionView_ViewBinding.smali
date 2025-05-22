.class public Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;
.super Ljava/lang/Object;
.source "FishPositionView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/ship/FishPositionView;

.field private view1008:Landroid/view/View;

.field private view10d8:Landroid/view/View;

.field private view10e2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/ship/FishPositionView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/FishPositionView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/ship/FishPositionView;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/FishPositionView;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->ship_function_list_close:I

    const-string v1, "field \'mImageClose\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    sget v1, Lcom/powervision/gcs/R$id;->ship_function_list_close:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageClose\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/FishPositionView;->mImageClose:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->view1008:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding$1;-><init>(Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;Lcom/powervision/gcs/view/ship/FishPositionView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/powervision/gcs/R$id;->text_tag:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextTag\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/FishPositionView;->mTextTag:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/powervision/gcs/R$id;->text_latlng:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextLatlng\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/FishPositionView;->mTextLatlng:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/powervision/gcs/R$id;->image_fish:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'mImageFish\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/ship/FishPositionView;->mImageFish:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/powervision/gcs/R$id;->text_collect:I

    const-string v1, "field \'mTextCollect\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    sget v1, Lcom/powervision/gcs/R$id;->text_collect:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTextCollect\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/view/ship/FishPositionView;->mTextCollect:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->view10d8:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding$2;-><init>(Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;Lcom/powervision/gcs/view/ship/FishPositionView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v0, Lcom/powervision/gcs/R$id;->text_fish:I

    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->view10e2:Landroid/view/View;

    .line 58
    new-instance v0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding$3;-><init>(Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;Lcom/powervision/gcs/view/ship/FishPositionView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/FishPositionView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->target:Lcom/powervision/gcs/view/ship/FishPositionView;

    .line 73
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/FishPositionView;->mImageClose:Landroid/widget/ImageView;

    .line 74
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/FishPositionView;->mTextTag:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/FishPositionView;->mTextLatlng:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/FishPositionView;->mImageFish:Landroid/widget/ImageView;

    .line 77
    iput-object v1, v0, Lcom/powervision/gcs/view/ship/FishPositionView;->mTextCollect:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->view1008:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->view1008:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->view10d8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->view10d8:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->view10e2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/powervision/gcs/view/ship/FishPositionView_ViewBinding;->view10e2:Landroid/view/View;

    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
