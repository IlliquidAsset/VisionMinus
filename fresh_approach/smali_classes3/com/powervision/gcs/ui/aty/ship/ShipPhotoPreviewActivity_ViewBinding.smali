.class public Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ShipPhotoPreviewActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

.field private view10df:Landroid/view/View;

.field private view10e1:Landroid/view/View;

.field private viewdb8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    .line 40
    sget v0, Lcom/powervision/gcs/R$id;->text_delete:I

    const-string v1, "field \'text_delete\' and method \'text_delete\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    sget v1, Lcom/powervision/gcs/R$id;->text_delete:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'text_delete\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->text_delete:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->view10df:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget v0, Lcom/powervision/gcs/R$id;->text_download:I

    const-string v1, "field \'text_download\' and method \'text_download\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    sget v1, Lcom/powervision/gcs/R$id;->text_download:I

    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'text_download\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->text_download:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->view10e1:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/powervision/gcs/R$id;->layout_header:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'layout_header\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_header:Landroid/widget/RelativeLayout;

    .line 59
    sget v0, Lcom/powervision/gcs/R$id;->preview_layout_footer:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'layout_footer\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_footer:Landroid/widget/LinearLayout;

    .line 60
    sget v0, Lcom/powervision/gcs/R$id;->image_select:I

    const-class v1, Landroid/widget/CheckBox;

    const-string v2, "field \'checkBox\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->checkBox:Landroid/widget/CheckBox;

    .line 61
    sget v0, Lcom/powervision/gcs/R$id;->album_viewpager:I

    const-class v1, Lcom/powervision/gcs/view/PhotoPrViewPager;

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/PhotoPrViewPager;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->mViewPager:Lcom/powervision/gcs/view/PhotoPrViewPager;

    .line 62
    sget v0, Lcom/powervision/gcs/R$id;->image_back:I

    const-string v1, "field \'image_back\' and method \'image_back\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 63
    sget v1, Lcom/powervision/gcs/R$id;->image_back:I

    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_back\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->image_back:Landroid/widget/ImageView;

    .line 64
    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->viewdb8:Landroid/view/View;

    .line 65
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding$3;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget v0, Lcom/powervision/gcs/R$id;->photo_num_all:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'photo_num_all\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->photo_num_all:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/powervision/gcs/R$id;->cp:I

    const-string v1, "field \'psb\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->psb:Landroid/view/View;

    .line 73
    sget v0, Lcom/powervision/gcs/R$id;->download_progress_status:I

    const-class v1, Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    const-string v2, "field \'roundProgressBar\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    iput-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->roundProgressBar:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;

    .line 83
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->text_delete:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->text_download:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_header:Landroid/widget/RelativeLayout;

    .line 86
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->layout_footer:Landroid/widget/LinearLayout;

    .line 87
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->checkBox:Landroid/widget/CheckBox;

    .line 88
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->mViewPager:Lcom/powervision/gcs/view/PhotoPrViewPager;

    .line 89
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->image_back:Landroid/widget/ImageView;

    .line 90
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->photo_num_all:Landroid/widget/TextView;

    .line 91
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->psb:Landroid/view/View;

    .line 92
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity;->roundProgressBar:Lcom/powervision/gcs/view/ship/ShipRoundProgress;

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->view10df:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->view10df:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->view10e1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->view10e1:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->viewdb8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipPhotoPreviewActivity_ViewBinding;->viewdb8:Landroid/view/View;

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
