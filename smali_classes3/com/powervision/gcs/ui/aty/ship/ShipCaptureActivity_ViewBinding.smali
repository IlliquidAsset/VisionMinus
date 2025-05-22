.class public Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ShipCaptureActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->zxingview:I

    const-class v1, Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    const-string v2, "field \'zXingView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->text_back:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextBack\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mTextBack:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->text_bottom:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextBottom\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mTextBottom:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->image_light:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'mImageLight\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mImageLight:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->ll_type_remote:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llTypeRemote\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->llTypeRemote:Landroid/widget/LinearLayout;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->ll_type_seeker:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llTypeSeeker\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->llTypeSeeker:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;

    .line 44
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->zXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    .line 45
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mTextBack:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mTextBottom:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->mImageLight:Landroid/widget/ImageView;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->llTypeRemote:Landroid/widget/LinearLayout;

    .line 49
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipCaptureActivity;->llTypeSeeker:Landroid/widget/LinearLayout;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
