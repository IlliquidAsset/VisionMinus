.class public Lcom/yalantis/ucrop/UCropActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/UCropActivity$GestureTypes;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x3

.field private static final CONTROLS_ANIMATION_DURATION:J = 0x32L

.field public static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field public static final NONE:I = 0x0

.field public static final ROTATE:I = 0x2

.field private static final ROTATE_WIDGET_SENSITIVITY_COEFFICIENT:I = 0x2a

.field public static final SCALE:I = 0x1

.field private static final SCALE_WIDGET_SENSITIVITY_COEFFICIENT:I = 0x3a98

.field private static final TABS_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UCropActivity"


# instance fields
.field private mActiveControlsWidgetColor:I

.field private mAllowedGestures:[I

.field private mBlockingView:Landroid/view/View;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mControlsTransition:Landroidx/transition/Transition;

.field private mCropAspectRatioViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mEditType:I

.field private mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

.field private mHsvEditAspectRatio:Landroid/widget/HorizontalScrollView;

.field private mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

.field private mIsBitmapChange:Z

.field private mLastAngle:F

.field private mLayoutAspectRatio:Landroid/view/ViewGroup;

.field private mLayoutRotate:Landroid/view/ViewGroup;

.field private mLayoutScale:Landroid/view/ViewGroup;

.field private mLlEditAspectRatio:Landroid/widget/LinearLayout;

.field private mLogoColor:I

.field private mMiddleSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

.field private mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

.field private mRootViewBackgroundColor:I

.field private mShowBottomControls:Z

.field private mShowLoader:Z

.field private final mStateClickListener:Landroid/view/View$OnClickListener;

.field private mStatusBarColor:I

.field private mTextViewRotateAngle:Landroid/widget/TextView;

.field private mTextViewScalePercent:Landroid/widget/TextView;

.field private mToolbarCancelDrawable:I

.field private mToolbarColor:I

.field private mToolbarCropDrawable:I

.field private mToolbarTitle:Ljava/lang/String;

.field private mToolbarWidgetColor:I

.field private mTvEditBottomTitle:Landroid/widget/TextView;

.field private mUCropView:Lcom/yalantis/ucrop/view/UCropView;

.field private mWrapperStateAspectRatio:Landroid/view/ViewGroup;

.field private mWrapperStateRotate:Landroid/view/ViewGroup;

.field private mWrapperStateScale:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/yalantis/ucrop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x1

    .line 130
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    .line 116
    sget-object v0, Lcom/yalantis/ucrop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    .line 117
    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressQuality:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 118
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mEditType:I

    .line 541
    new-instance v0, Lcom/yalantis/ucrop/UCropActivity$1;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/UCropActivity$1;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

    .line 812
    new-instance v0, Lcom/yalantis/ucrop/UCropActivity$8;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/UCropActivity$8;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/yalantis/ucrop/UCropActivity;F)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setAngleText(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/yalantis/ucrop/UCropActivity;F)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setScaleText(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yalantis/ucrop/UCropActivity;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->rotateByAngle(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/yalantis/ucrop/UCropActivity;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setWidgetState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/UCropView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yalantis/ucrop/UCropActivity;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yalantis/ucrop/UCropActivity;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yalantis/ucrop/UCropActivity;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setTitleToReset()V

    return-void
.end method

.method static synthetic access$802(Lcom/yalantis/ucrop/UCropActivity;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mIsBitmapChange:Z

    return p1
.end method

.method static synthetic access$900(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->resetRotation()V

    return-void
.end method

.method private addBlockingView()V
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    .line 879
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 880
    sget v2, Lcom/yalantis/ucrop/R$id;->toolbar:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 881
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 882
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 884
    :cond_0
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_photobox:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private changeSelectedTab(I)V
    .locals 4

    .line 858
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_photobox:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mControlsTransition:Landroidx/transition/Transition;

    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 860
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateScale:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->text_view_scale:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$id;->state_scale:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->text_view_crop:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateRotate:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->text_view_rotate:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initiateRootViews()V
    .locals 3

    .line 525
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/UCropView;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;

    .line 526
    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->getCropImageView()Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 527
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->getOverlayView()Lcom/yalantis/ucrop/view/OverlayView;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    .line 529
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTransformImageListener(Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;)V

    .line 531
    sget v0, Lcom/yalantis/ucrop/R$id;->image_view_logo:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mLogoColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 533
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_frame:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mRootViewBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 534
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z

    if-nez v0, :cond_0

    .line 535
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_frame:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 536
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 537
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_frame:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private processOptions(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "com.yalantis.ucrop.CompressionFormatName"

    .line 236
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 241
    sget-object v0, Lcom/yalantis/ucrop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    :cond_1
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    const-string v1, "com.yalantis.ucrop.CompressionQuality"

    .line 243
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressQuality:I

    const-string v0, "com.yalantis.ucrop.AllowedGestures"

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 248
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const-string v1, "com.yalantis.ucrop.MaxBitmapSize"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxBitmapSize(I)V

    .line 253
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const/high16 v1, 0x41200000    # 10.0f

    const-string v3, "com.yalantis.ucrop.MaxScaleMultiplier"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxScaleMultiplier(F)V

    .line 254
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const/16 v1, 0x1f4

    const-string v3, "com.yalantis.ucrop.ImageToCropBoundsAnimDuration"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBoundsAnimDuration(J)V

    .line 257
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.FreeStyleCrop"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setFreestyleCropEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_dimmed:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v3, "com.yalantis.ucrop.DimmedLayerColor"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setDimmedColor(I)V

    .line 260
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.CircleDimmedLayer"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCircleDimmedLayer(Z)V

    .line 262
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.ShowCropFrame"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropFrame(Z)V

    .line 263
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_frame:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v4, "com.yalantis.ucrop.CropFrameColor"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameColor(I)V

    .line 264
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_frame_stoke_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v4, "com.yalantis.ucrop.CropFrameStrokeWidth"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameStrokeWidth(I)V

    .line 266
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.ShowCropGrid"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropGrid(Z)V

    .line 267
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.CropGridRowCount"

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridRowCount(I)V

    .line 268
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.CropGridColumnCount"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColumnCount(I)V

    .line 269
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_grid:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v3, "com.yalantis.ucrop.CropGridColor"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColor(I)V

    .line 270
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_grid:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v3, "com.yalantis.ucrop.CropGridCornerColor"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridCornerColor(I)V

    .line 271
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_grid_stoke_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v3, "com.yalantis.ucrop.CropGridStrokeWidth"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridStrokeWidth(I)V

    const-string v0, "com.yalantis.ucrop.AspectRatioX"

    const/4 v1, 0x0

    .line 274
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    const-string v3, "com.yalantis.ucrop.AspectRatioY"

    .line 275
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    const-string v4, "com.yalantis.ucrop.AspectRatioSelectedByDefault"

    .line 277
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "com.yalantis.ucrop.AspectRatioOptions"

    .line 278
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    cmpl-float v6, v0, v1

    if-lez v6, :cond_4

    cmpl-float v6, v3, v1

    if-lez v6, :cond_4

    .line 281
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    const/16 v4, 0x8

    .line 282
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 284
    :cond_3
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    .line 285
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 286
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-virtual {v1}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioX()F

    move-result v1

    .line 287
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-virtual {v3}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioY()F

    move-result v3

    div-float/2addr v1, v3

    .line 286
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    goto :goto_1

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    :goto_1
    const-string v0, "com.yalantis.ucrop.MaxSizeX"

    .line 293
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.MaxSizeY"

    .line 294
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez v0, :cond_6

    if-lez p1, :cond_6

    .line 297
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxResultImageSizeX(I)V

    .line 298
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxResultImageSizeY(I)V

    :cond_6
    return-void
.end method

.method private resetRotation()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    .line 804
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method private reverseImage(II)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1, p2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postScale(FFF)V

    .line 491
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method private rotateByAngle(I)V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    .line 809
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method private setAllowedGestures(I)V
    .locals 6

    .line 867
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I

    aget v2, v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v4, :cond_1

    aget v1, v1, p1

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setScaleEnabled(Z)V

    .line 868
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mAllowedGestures:[I

    aget v2, v1, p1

    if-eq v2, v4, :cond_2

    aget p1, v1, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setRotateEnabled(Z)V

    return-void
.end method

.method private setAngleText(F)V
    .locals 4

    .line 779
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewRotateAngle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 780
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%.1f\u00b0"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setAngleTextColor(I)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewRotateAngle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private setImageData(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.yalantis.ucrop.InputUri"

    .line 212
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "com.yalantis.ucrop.OutputUri"

    .line 213
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 214
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->processOptions(Landroid/content/Intent;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1, v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setResultError(Ljava/lang/Throwable;)V

    .line 221
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->finish()V

    goto :goto_0

    .line 224
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    sget v0, Lcom/yalantis/ucrop/R$string;->ucrop_error_input_data_is_absent:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setResultError(Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->finish()V

    :goto_0
    return-void
.end method

.method private setInitialState()V
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z

    if-eqz v0, :cond_1

    .line 823
    iget v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mEditType:I

    if-nez v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 825
    sget v0, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setWidgetState(I)V

    goto :goto_0

    .line 827
    :cond_0
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setWidgetState(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 831
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setScaleText(F)V
    .locals 5

    .line 791
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewScalePercent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 792
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float p1, p1, v4

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%d%%"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setScaleTextColor(I)V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewScalePercent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private setStatusBarColor(I)V
    .locals 2

    .line 588
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 591
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mEditType:I

    if-nez v1, :cond_0

    const/high16 v1, -0x80000000

    .line 592
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 593
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x400

    .line 595
    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTitleToReset()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTvEditBottomTitle:Landroid/widget/TextView;

    sget v1, Lcom/yalantis/ucrop/R$string;->App_MediaLib_130:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mIsBitmapChange:Z

    return-void
.end method

.method private setWidgetState(I)V
    .locals 5

    .line 836
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z

    if-nez v0, :cond_0

    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 839
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateRotate:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 840
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateScale:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_scale:I

    if-ne p1, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 842
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutAspectRatio:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    const/16 v4, 0x8

    if-ne p1, v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutRotate:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutScale:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_scale:I

    if-ne p1, v1, :cond_6

    const/4 v4, 0x0

    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 846
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->changeSelectedTab(I)V

    .line 848
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I

    if-ne p1, v0, :cond_7

    .line 849
    invoke-direct {p0, v3}, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V

    goto :goto_5

    .line 850
    :cond_7
    sget v0, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v0, :cond_8

    .line 851
    invoke-direct {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V

    goto :goto_5

    :cond_8
    const/4 p1, 0x2

    .line 853
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setAllowedGestures(I)V

    :goto_5
    return-void
.end method

.method private setupAppBar()V
    .locals 4

    .line 498
    iget v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mStatusBarColor:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setStatusBarColor(I)V

    .line 500
    sget v0, Lcom/yalantis/ucrop/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 503
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 504
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 506
    sget v1, Lcom/yalantis/ucrop/R$id;->toolbar_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 507
    iget v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarCancelDrawable:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 512
    iget v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 513
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 515
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 516
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 521
    :cond_0
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mEditType:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method private setupAspectRatioWidget(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "com.yalantis.ucrop.AspectRatioSelectedByDefault"

    const/4 v1, 0x0

    .line 602
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.yalantis.ucrop.AspectRatioOptions"

    .line 603
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 605
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 608
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 609
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-direct {v4, v3, v2, v2}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {v4, v3, v6, v5}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    sget v5, Lcom/yalantis/ucrop/R$string;->ucrop_label_original:I

    invoke-virtual {p0, v5}, Lcom/yalantis/ucrop/UCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v3, v6, v5}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41100000    # 9.0f

    invoke-direct {v4, v3, v5, v6}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_1
    sget v4, Lcom/yalantis/ucrop/R$id;->layout_aspect_ratio:I

    invoke-virtual {p0, v4}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 621
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 622
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 623
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yalantis/ucrop/model/AspectRatio;

    .line 624
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/yalantis/ucrop/R$layout;->ucrop_aspect_ratio:I

    invoke-virtual {v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 625
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;

    .line 627
    iget v8, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveControlsWidgetColor:I

    invoke-virtual {v7, v8}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setActiveColor(I)V

    .line 628
    invoke-virtual {v7, v2}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setAspectRatio(Lcom/yalantis/ucrop/model/AspectRatio;)V

    .line 630
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 631
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 634
    :cond_2
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 636
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 637
    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$2;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/UCropActivity$2;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setupAspectRatioWidgetRotate(Landroid/content/Intent;)V
    .locals 7

    .line 657
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mHsvEditAspectRatio:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const-string v0, "com.yalantis.ucrop.AspectRatioSelectedByDefault"

    .line 658
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.yalantis.ucrop.AspectRatioOptions"

    .line 659
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 661
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 664
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 665
    new-instance v0, Lcom/yalantis/ucrop/model/AspectRatio;

    sget v3, Lcom/yalantis/ucrop/R$string;->App_MediaLib_129:I

    invoke-virtual {p0, v3}, Lcom/yalantis/ucrop/UCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v4}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    new-instance v0, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v3}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    new-instance v0, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v0, v2, v3, v4}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    new-instance v0, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-direct {v0, v2, v4, v3}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    new-instance v0, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v2, v4, v3}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    new-instance v0, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-direct {v0, v2, v3, v4}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v0, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v3, 0x41100000    # 9.0f

    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {v0, v2, v3, v4}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v0, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-direct {v0, v2, v4, v3}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 679
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yalantis/ucrop/model/AspectRatio;

    .line 680
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/yalantis/ucrop/R$layout;->ucrop_aspect_ratio_edit:I

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 681
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;

    .line 682
    sget v6, Lcom/yalantis/ucrop/R$color;->ucrop_color_widget_active_edit:I

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setActiveColor(I)V

    .line 683
    invoke-virtual {v5, v3}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setAspectRatio(Lcom/yalantis/ucrop/model/AspectRatio;)V

    const/16 v3, 0x3c

    .line 684
    invoke-virtual {v5, v3, v1, v3, v1}, Lcom/yalantis/ucrop/view/widget/AspectRatioRectView;->setPadding(IIII)V

    .line 686
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mLlEditAspectRatio:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 687
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 690
    iput-boolean p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mIsBitmapChange:Z

    .line 691
    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 692
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 693
    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$3;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/UCropActivity$3;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setupRotateWidget()V
    .locals 2

    .line 712
    sget v0, Lcom/yalantis/ucrop/R$id;->text_view_rotate:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewRotateAngle:Landroid/widget/TextView;

    .line 713
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$4;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/UCropActivity$4;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    .line 714
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;)V

    .line 731
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveControlsWidgetColor:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V

    .line 733
    sget v0, Lcom/yalantis/ucrop/R$id;->wrapper_reset_rotate:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$5;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/UCropActivity$5;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    sget v0, Lcom/yalantis/ucrop/R$id;->wrapper_rotate_by_angle:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$6;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/UCropActivity$6;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveControlsWidgetColor:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setAngleTextColor(I)V

    return-void
.end method

.method private setupScaleWidget()V
    .locals 2

    .line 749
    sget v0, Lcom/yalantis/ucrop/R$id;->text_view_scale:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mTextViewScalePercent:Landroid/widget/TextView;

    .line 750
    sget v0, Lcom/yalantis/ucrop/R$id;->scale_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    new-instance v1, Lcom/yalantis/ucrop/UCropActivity$7;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/UCropActivity$7;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    .line 751
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;)V

    .line 773
    sget v0, Lcom/yalantis/ucrop/R$id;->scale_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveControlsWidgetColor:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V

    .line 775
    iget v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveControlsWidgetColor:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->setScaleTextColor(I)V

    return-void
.end method

.method private setupStatesWrapper()V
    .locals 6

    .line 571
    sget v0, Lcom/yalantis/ucrop/R$id;->image_view_state_scale:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 572
    sget v1, Lcom/yalantis/ucrop/R$id;->image_view_state_rotate:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 573
    sget v2, Lcom/yalantis/ucrop/R$id;->image_view_state_aspect_ratio:I

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 575
    new-instance v3, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveControlsWidgetColor:I

    invoke-direct {v3, v4, v5}, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    new-instance v0, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveControlsWidgetColor:I

    invoke-direct {v0, v3, v4}, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    new-instance v0, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveControlsWidgetColor:I

    invoke-direct {v0, v1, v3}, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setupViews(Landroid/content/Intent;)V
    .locals 5

    .line 303
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_statusbar:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.StatusBarColor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mStatusBarColor:I

    .line 304
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.ToolbarColor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarColor:I

    .line 305
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_active_controls_color:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.UcropColorControlsWidgetActive"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mActiveControlsWidgetColor:I

    .line 307
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar_widget:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.UcropToolbarWidgetColor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    .line 308
    sget v0, Lcom/yalantis/ucrop/R$drawable;->ucrop_ic_cross:I

    const-string v1, "com.yalantis.ucrop.UcropToolbarCancelDrawable"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarCancelDrawable:I

    .line 309
    sget v0, Lcom/yalantis/ucrop/R$drawable;->ucrop_ic_done:I

    const-string v1, "com.yalantis.ucrop.UcropToolbarCropDrawable"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarCropDrawable:I

    const-string v0, "com.yalantis.ucrop.UcropToolbarTitleText"

    .line 310
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$string;->ucrop_label_edit_photo:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    .line 312
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_logo:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.UcropLogoColor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLogoColor:I

    const-string v0, "com.yalantis.ucrop.HideBottomControls"

    const/4 v1, 0x0

    .line 313
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z

    .line 314
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_crop_background:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v3, "com.yalantis.ucrop.UcropRootViewBackgroundColor"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mRootViewBackgroundColor:I

    const-string v0, "com.yalantis.ucrop.EditType"

    .line 316
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mEditType:I

    .line 318
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setupAppBar()V

    .line 319
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->initiateRootViews()V

    .line 321
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowBottomControls:Z

    if-eqz v0, :cond_2

    .line 322
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_photobox:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 323
    sget v3, Lcom/yalantis/ucrop/R$id;->controls_wrapper:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 324
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/yalantis/ucrop/R$layout;->ucrop_controls:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 326
    new-instance v2, Landroidx/transition/AutoTransition;

    invoke-direct {v2}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mControlsTransition:Landroidx/transition/Transition;

    const-wide/16 v3, 0x32

    .line 327
    invoke-virtual {v2, v3, v4}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 329
    sget v2, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    .line 330
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    sget v2, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateRotate:Landroid/view/ViewGroup;

    .line 332
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    sget v2, Lcom/yalantis/ucrop/R$id;->state_scale:I

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mWrapperStateScale:Landroid/view/ViewGroup;

    .line 334
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    sget v2, Lcom/yalantis/ucrop/R$id;->layout_aspect_ratio:I

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutAspectRatio:Landroid/view/ViewGroup;

    .line 337
    sget v2, Lcom/yalantis/ucrop/R$id;->layout_rotate_wheel:I

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutRotate:Landroid/view/ViewGroup;

    .line 338
    sget v2, Lcom/yalantis/ucrop/R$id;->layout_scale_wheel:I

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mLayoutScale:Landroid/view/ViewGroup;

    .line 339
    sget v2, Lcom/yalantis/ucrop/R$id;->ucrop_frame:I

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 340
    iget v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mEditType:I

    const/4 v4, 0x2

    if-nez v3, :cond_1

    .line 341
    sget v3, Lcom/yalantis/ucrop/R$id;->controls_wrapper:I

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 343
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setupAspectRatioWidget(Landroid/content/Intent;)V

    goto :goto_1

    .line 345
    :cond_1
    sget v1, Lcom/yalantis/ucrop/R$id;->controls_wrapper_edit:I

    invoke-virtual {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x8

    .line 346
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 347
    iget v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mEditType:I

    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/UCropActivity;->workEditControl(Landroid/content/Intent;I)V

    .line 349
    :goto_1
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setupRotateWidget()V

    .line 350
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setupScaleWidget()V

    .line 351
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setupStatesWrapper()V

    :cond_2
    return-void
.end method

.method private workEditControl(Landroid/content/Intent;I)V
    .locals 9

    .line 419
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_photobox:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 420
    sget v1, Lcom/yalantis/ucrop/R$id;->controls_wrapper_edit:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 421
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 422
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/yalantis/ucrop/R$layout;->ucrop_edit_bottom_controls:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 423
    new-instance v0, Landroidx/transition/AutoTransition;

    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mControlsTransition:Landroidx/transition/Transition;

    const-wide/16 v2, 0x32

    .line 424
    invoke-virtual {v0, v2, v3}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 425
    sget v0, Lcom/yalantis/ucrop/R$id;->hsv_edit_aspect_ratio:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mHsvEditAspectRatio:Landroid/widget/HorizontalScrollView;

    .line 426
    sget v0, Lcom/yalantis/ucrop/R$id;->ll_edit_aspect_ratio:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mLlEditAspectRatio:Landroid/widget/LinearLayout;

    .line 427
    sget v0, Lcom/yalantis/ucrop/R$id;->layout_bottom_rotate_view:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 428
    sget v2, Lcom/yalantis/ucrop/R$id;->rotate_turn_left:I

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 429
    sget v3, Lcom/yalantis/ucrop/R$id;->rotate_turn_right:I

    invoke-virtual {p0, v3}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 430
    sget v5, Lcom/yalantis/ucrop/R$id;->rotate_lr_reverse:I

    invoke-virtual {p0, v5}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 431
    sget v6, Lcom/yalantis/ucrop/R$id;->rotate_tb_reverse:I

    invoke-virtual {p0, v6}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 432
    sget v7, Lcom/yalantis/ucrop/R$id;->middle_seek_bar:I

    invoke-virtual {p0, v7}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    iput-object v7, p0, Lcom/yalantis/ucrop/UCropActivity;->mMiddleSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    .line 433
    sget v7, Lcom/yalantis/ucrop/R$id;->tb_edit_bottom_bar:I

    invoke-virtual {p0, v7}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    .line 434
    sget v8, Lcom/yalantis/ucrop/R$id;->tb_edit_bottom_title:I

    invoke-virtual {p0, v8}, Lcom/yalantis/ucrop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/yalantis/ucrop/UCropActivity;->mTvEditBottomTitle:Landroid/widget/TextView;

    .line 435
    iget-object v8, p0, Lcom/yalantis/ucrop/UCropActivity;->mMiddleSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    invoke-virtual {v8, p0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setOnSeekChangeListener(Lcom/yalantis/ucrop/view/MiddlePopSeekBar$OnSeekChangeListener;)V

    .line 436
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarColor:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 442
    iget v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 443
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mTvEditBottomTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mTvEditBottomTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarCancelDrawable:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 446
    iget v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 447
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 448
    invoke-virtual {p0, v7}, Lcom/yalantis/ucrop/UCropActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 449
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    const/16 v2, 0x8

    if-ne v4, p2, :cond_1

    .line 454
    iget-object p2, p0, Lcom/yalantis/ucrop/UCropActivity;->mHsvEditAspectRatio:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 455
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 456
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setupAspectRatioWidgetRotate(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p1, p2, :cond_2

    .line 458
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mHsvEditAspectRatio:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 459
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 460
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->workRotateFun()V

    :cond_2
    :goto_0
    return-void
.end method

.method private workRotateFun()V
    .locals 6

    .line 473
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mMiddleSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->reset()V

    .line 474
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mMiddleSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    const/4 v1, 0x1

    int-to-float v2, v1

    const/16 v3, -0x14

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setSeekLength(IIIF)V

    .line 475
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mMiddleSeekBar:Lcom/yalantis/ucrop/view/MiddlePopSeekBar;

    int-to-float v2, v5

    invoke-virtual {v0, v2, v1}, Lcom/yalantis/ucrop/view/MiddlePopSeekBar;->setValue(FZ)V

    return-void
.end method


# virtual methods
.method protected cropAndSaveImage()V
    .locals 4

    .line 888
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mBlockingView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 889
    iput-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z

    .line 890
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->supportInvalidateOptionsMenu()V

    .line 892
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mCompressQuality:I

    new-instance v3, Lcom/yalantis/ucrop/UCropActivity$9;

    invoke-direct {v3, p0}, Lcom/yalantis/ucrop/UCropActivity$9;-><init>(Lcom/yalantis/ucrop/UCropActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView;->cropAndSaveImage(Landroid/graphics/Bitmap$CompressFormat;ILcom/yalantis/ucrop/callback/BitmapCropCallback;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 358
    sget v0, Lcom/yalantis/ucrop/R$id;->tb_edit_bottom_title:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_3

    .line 360
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mTvEditBottomTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mEditType:I

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 362
    iput v2, p0, Lcom/yalantis/ucrop/UCropActivity;->mLastAngle:F

    .line 363
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->workRotateFun()V

    .line 364
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->resetRotation()V

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 366
    :goto_0
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 367
    iget-object v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_2
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1, v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    .line 371
    :goto_2
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getMinScale()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->zoomInImage(F)V

    .line 372
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    .line 373
    iput-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mIsBitmapChange:Z

    goto :goto_3

    .line 374
    :cond_3
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_turn_left:I

    if-ne v0, p1, :cond_4

    const/16 p1, -0x5a

    .line 375
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->rotateByAngle(I)V

    .line 376
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setTitleToReset()V

    goto :goto_3

    .line 377
    :cond_4
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_turn_right:I

    if-ne v0, p1, :cond_5

    const/16 p1, 0x5a

    .line 378
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->rotateByAngle(I)V

    .line 379
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setTitleToReset()V

    goto :goto_3

    .line 380
    :cond_5
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_lr_reverse:I

    const/4 v2, -0x1

    if-ne v0, p1, :cond_6

    .line 381
    invoke-direct {p0, v2, v1}, Lcom/yalantis/ucrop/UCropActivity;->reverseImage(II)V

    goto :goto_3

    .line 382
    :cond_6
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_tb_reverse:I

    if-ne v0, p1, :cond_7

    .line 383
    invoke-direct {p0, v1, v2}, Lcom/yalantis/ucrop/UCropActivity;->reverseImage(II)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    sget p1, Lcom/yalantis/ucrop/R$layout;->ucrop_activity_photobox:I

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setContentView(I)V

    .line 138
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setupViews(Landroid/content/Intent;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setImageData(Landroid/content/Intent;)V

    .line 142
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setInitialState()V

    .line 143
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->addBlockingView()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .line 148
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$menu;->ucrop_menu_activity:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 150
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_loader:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 155
    iget v3, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 156
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 158
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    sget v1, Lcom/yalantis/ucrop/R$string;->ucrop_mutate_exception_hint:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/UCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "%s - %s"

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UCropActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 163
    :cond_0
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 164
    iget v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarCropDrawable:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 167
    iget v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mToolbarWidgetColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 168
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 183
    iget v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mEditType:I

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->cropAndSaveImage()V

    return v2

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mIsBitmapChange:Z

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->cropAndSaveImage()V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->onBackPressed()V

    goto :goto_0

    .line 193
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/yalantis/ucrop/UCropActivity;->onBackPressed()V

    return v2

    .line 197
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 175
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_loader:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yalantis/ucrop/UCropActivity;->mShowLoader:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onSeekChanged(FFLcom/yalantis/ucrop/view/MiddlePopSeekBar;)V
    .locals 1

    .line 389
    iget-object p2, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->cancelAllAnimations()V

    const/high16 p2, 0x42280000    # 42.0f

    const/4 p3, 0x0

    cmpl-float p3, p1, p3

    if-lez p3, :cond_1

    .line 391
    iget p3, p0, Lcom/yalantis/ucrop/UCropActivity;->mLastAngle:F

    cmpl-float p3, p1, p3

    if-lez p3, :cond_0

    .line 392
    iget-object p3, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    div-float p2, p1, p2

    invoke-virtual {p3, p2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object p3, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    neg-float v0, p1

    div-float/2addr v0, p2

    invoke-virtual {p3, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    goto :goto_0

    .line 397
    :cond_1
    iget p3, p0, Lcom/yalantis/ucrop/UCropActivity;->mLastAngle:F

    cmpg-float p3, p1, p3

    if-gez p3, :cond_2

    .line 398
    iget-object p3, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    div-float p2, p1, p2

    invoke-virtual {p3, p2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    goto :goto_0

    .line 400
    :cond_2
    iget-object p3, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    neg-float v0, p1

    div-float/2addr v0, p2

    invoke-virtual {p3, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    .line 403
    :goto_0
    iput p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mLastAngle:F

    const/4 p1, 0x1

    .line 404
    iput-boolean p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mIsBitmapChange:Z

    return-void
.end method

.method public onSeekStopped(FFLcom/yalantis/ucrop/view/MiddlePopSeekBar;)V
    .locals 0

    .line 409
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    .line 410
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;->setTitleToReset()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 202
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 203
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->cancelAllAnimations()V

    :cond_0
    return-void
.end method

.method protected setResultError(Ljava/lang/Throwable;)V
    .locals 2

    .line 920
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.yalantis.ucrop.Error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x60

    invoke-virtual {p0, v0, p1}, Lcom/yalantis/ucrop/UCropActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected setResultUri(Landroid/net/Uri;FIIII)V
    .locals 2

    .line 909
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.yalantis.ucrop.OutputUri"

    .line 910
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.yalantis.ucrop.CropAspectRatio"

    .line 911
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.yalantis.ucrop.ImageWidth"

    .line 912
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.yalantis.ucrop.ImageHeight"

    .line 913
    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.yalantis.ucrop.OffsetX"

    .line 914
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.yalantis.ucrop.OffsetY"

    .line 915
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    .line 909
    invoke-virtual {p0, p2, p1}, Lcom/yalantis/ucrop/UCropActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
