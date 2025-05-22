.class public Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;
.super Lcn/sharesdk/onekeyshare/OnekeySharePage;
.source "PicViewerPage.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private pic:Landroid/graphics/Bitmap;

.field private sivViewer:Lcom/mob/tools/gui/ScaledImageView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeySharePage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;)Landroid/graphics/Bitmap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->pic:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;)Lcom/mob/tools/gui/ScaledImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->sivViewer:Lcom/mob/tools/gui/ScaledImageView;

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x4c000000    # 3.3554432E7f

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    new-instance v0, Lcom/mob/tools/gui/ScaledImageView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mob/tools/gui/ScaledImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->sivViewer:Lcom/mob/tools/gui/ScaledImageView;

    .line 64
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScaledImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->sivViewer:Lcom/mob/tools/gui/ScaledImageView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->pic:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->sivViewer:Lcom/mob/tools/gui/ScaledImageView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ScaledImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->sivViewer:Lcom/mob/tools/gui/ScaledImageView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ScaledImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 73
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->sivViewer:Lcom/mob/tools/gui/ScaledImageView;

    new-instance v1, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage$1;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScaledImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PicViewerPage;->pic:Landroid/graphics/Bitmap;

    return-void
.end method
