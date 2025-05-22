.class public Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ShipGalleryActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->gallery_pager:I

    const-class v1, Lcom/powervision/gcs/view/GalleryViewPager;

    const-string v2, "field \'galleryPager\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/view/GalleryViewPager;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->galleryPager:Lcom/powervision/gcs/view/GalleryViewPager;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->home_title:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'homeTitle\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->homeTitle:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->toolbar:I

    const-class v1, Landroidx/appcompat/widget/Toolbar;

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->cp:I

    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'mLoadingView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mLoadingView:Landroid/widget/RelativeLayout;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->text_download:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'textDownload\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->textDownload:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->preview_layout_footer:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'previewLayoutFooter\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->previewLayoutFooter:Landroid/widget/LinearLayout;

    .line 36
    sget v0, Lcom/powervision/gcs/R$id;->text_delete:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'textDelete\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->textDelete:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;

    .line 46
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->galleryPager:Lcom/powervision/gcs/view/GalleryViewPager;

    .line 47
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->homeTitle:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 49
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mLoadingView:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->textDownload:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->previewLayoutFooter:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->textDelete:Landroid/widget/TextView;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
