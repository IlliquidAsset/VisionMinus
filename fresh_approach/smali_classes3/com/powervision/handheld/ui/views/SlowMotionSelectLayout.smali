.class public Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;
.super Landroid/widget/LinearLayout;
.source "SlowMotionSelectLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;
    }
.end annotation


# instance fields
.field private callBack:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private isVertical:Z

.field private mImageArrowFhd:Landroid/widget/ImageView;

.field private mImageArrowHd:Landroid/widget/ImageView;

.field private mImageTitle:Landroid/widget/ImageView;

.field private mLayoutFhd:Landroid/widget/LinearLayout;

.field private mLayoutHd:Landroid/widget/LinearLayout;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 19
    iput p2, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->orientation:I

    .line 26
    iput-boolean p2, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->isVertical:Z

    .line 82
    new-instance p3, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;

    invoke-direct {p3, p0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$1;-><init>(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;)V

    iput-object p3, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->onClickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->context:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->inflater:Landroid/view/LayoutInflater;

    .line 40
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->isVertical:Z

    .line 41
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->inflates()V

    .line 42
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;)Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->callBack:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;

    return-object p0
.end method

.method private inflates()V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->isVertical:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/handheld/R$layout;->handheld_fps_set_layout_ver:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/powervision/handheld/R$layout;->handheld_fps_set_layout_hor:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 59
    sget v0, Lcom/powervision/handheld/R$id;->image_fps_set:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageTitle:Landroid/widget/ImageView;

    .line 60
    sget v0, Lcom/powervision/handheld/R$id;->layout_fhd_120:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mLayoutFhd:Landroid/widget/LinearLayout;

    .line 61
    sget v0, Lcom/powervision/handheld/R$id;->layout_hd_120:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mLayoutHd:Landroid/widget/LinearLayout;

    .line 62
    sget v0, Lcom/powervision/handheld/R$id;->image_fhd_120:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageArrowFhd:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcom/powervision/handheld/R$id;->image_hd_120:I

    invoke-virtual {p0, v0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageArrowHd:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageTitle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mLayoutHd:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mLayoutFhd:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 71
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageTitle:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/powervision/camera/utils/CameraUtil;->getCurrentResolutionImg(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageArrowFhd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageArrowHd:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    .line 77
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageArrowFhd:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageArrowHd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private selectFHD(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->isVertical:Z

    .line 135
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->removeAllViews()V

    .line 136
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->inflates()V

    .line 137
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->init()V

    return-void
.end method

.method public setCallBack(Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->callBack:Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout$SlowMotionSelectCallBack;

    return-void
.end method

.method public setLayoutOrientation(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->orientation:I

    .line 47
    invoke-virtual {p0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->removeAllViews()V

    .line 48
    invoke-direct {p0}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->init()V

    return-void
.end method

.method public setSelect(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageArrowFhd:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageArrowHd:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    .line 112
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageArrowFhd:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageArrowHd:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 142
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->mImageTitle:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/powervision/camera/utils/CameraUtil;->getCurrentResolutionImg(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/powervision/handheld/ui/views/SlowMotionSelectLayout;->setSelect(I)V

    return-void
.end method
