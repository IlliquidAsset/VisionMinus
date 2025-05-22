.class public abstract Lcom/powervision/gcs/view/wheelview/AbstractWheelView;
.super Lcom/powervision/gcs/view/wheelview/AbstractWheel;
.source "AbstractWheelView.java"


# static fields
.field protected static final DEF_ITEMS_DIMMED_ALPHA:I = 0x32

.field protected static final DEF_ITEM_OFFSET_PERCENT:I = 0xa

.field protected static final DEF_ITEM_PADDING:I = 0xa

.field protected static final DEF_SELECTION_DIVIDER_ACTIVE_ALPHA:I = 0x46

.field protected static final DEF_SELECTION_DIVIDER_DIMMED_ALPHA:I = 0x46

.field protected static final DEF_SELECTION_DIVIDER_SIZE:I = 0x2

.field protected static final PROPERTY_SELECTOR_PAINT_COEFF:Ljava/lang/String; = "selectorPaintCoeff"

.field protected static final PROPERTY_SEPARATORS_PAINT_ALPHA:Ljava/lang/String; = "separatorsPaintAlpha"

.field private static itemID:I = -0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mActiveCoeff:F

.field protected mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field protected mDimSeparatorsAnimator:Landroid/animation/Animator;

.field protected mItemOffsetPercent:I

.field protected mItemsDimmedAlpha:I

.field protected mItemsPadding:I

.field protected mPassiveCoeff:F

.field protected mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field protected mSelectionDividerActiveAlpha:I

.field protected mSelectionDividerDimmedAlpha:I

.field protected mSelectorWheelPaint:Landroid/graphics/Paint;

.field protected mSeparatorsBitmap:Landroid/graphics/Bitmap;

.field protected mSeparatorsPaint:Landroid/graphics/Paint;

.field protected mSpinBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;

    .line 54
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->itemID:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->itemID:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mPassiveCoeff:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 100
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mActiveCoeff:F

    return-void
.end method

.method private buildDimSelectorWheelAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 184
    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mActiveCoeff:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mPassiveCoeff:F

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "selectorPaintCoeff"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private fadeSelectorWheel(J)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 276
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private lightSeparators(J)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mDimSeparatorsAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 286
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mDimSeparatorsAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method protected abstract drawItems(Landroid/graphics/Canvas;)V
.end method

.method protected getMaxOverScrollDimension()I
    .locals 4

    .line 262
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->getBaseDimension()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method protected initAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 151
    invoke-super {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->initAttributes(Landroid/util/AttributeSet;I)V

    .line 153
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/R$styleable;->AbstractWheelView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 154
    sget p2, Lcom/powervision/gcs/R$styleable;->AbstractWheelView_itemsDimmedAlpha:I

    const/16 v0, 0x32

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mItemsDimmedAlpha:I

    .line 155
    sget p2, Lcom/powervision/gcs/R$styleable;->AbstractWheelView_selectionDividerActiveAlpha:I

    const/16 v0, 0x46

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSelectionDividerActiveAlpha:I

    .line 156
    sget p2, Lcom/powervision/gcs/R$styleable;->AbstractWheelView_selectionDividerDimmedAlpha:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSelectionDividerDimmedAlpha:I

    .line 157
    sget p2, Lcom/powervision/gcs/R$styleable;->AbstractWheelView_itemOffsetPercent:I

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mItemOffsetPercent:I

    .line 158
    sget p2, Lcom/powervision/gcs/R$styleable;->AbstractWheelView_itemsPadding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mItemsPadding:I

    .line 159
    sget p2, Lcom/powervision/gcs/R$styleable;->AbstractWheelView_selectionDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected initData(Landroid/content/Context;)V
    .locals 2

    .line 165
    invoke-super {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->initData(Landroid/content/Context;)V

    .line 168
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->buildDimSelectorWheelAnimator()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 170
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSelectionDividerActiveAlpha:I

    const/4 v1, 0x0

    aput v0, p1, v1

    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSelectionDividerDimmedAlpha:I

    const/4 v1, 0x1

    aput v0, p1, v1

    const-string v0, "separatorsPaintAlpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mDimSeparatorsAnimator:Landroid/animation/Animator;

    .line 175
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSeparatorsPaint:Landroid/graphics/Paint;

    .line 176
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 177
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSeparatorsPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSelectionDividerDimmedAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 180
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method protected abstract measureLayout()V
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 310
    invoke-super {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->onDraw(Landroid/graphics/Canvas;)V

    .line 312
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mViewAdapter:Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/powervision/gcs/view/wheelview/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->measureLayout()V

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->doItemsLayout()V

    .line 317
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->drawItems(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onScrollFinished()V
    .locals 2

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->invalidateItemsLayout(Z)V

    const-wide/16 v0, 0x1f4

    .line 257
    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->fadeSelectorWheel(J)V

    .line 258
    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->lightSeparators(J)V

    return-void
.end method

.method protected onScrollTouched()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 242
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mDimSeparatorsAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 243
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->setSelectorPaintCoeff(F)V

    .line 244
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSelectionDividerActiveAlpha:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->setSeparatorsPaintAlpha(I)V

    return-void
.end method

.method protected onScrollTouchedUp()V
    .locals 2

    .line 249
    invoke-super {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->onScrollTouchedUp()V

    const-wide/16 v0, 0x2ee

    .line 250
    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->fadeSelectorWheel(J)V

    .line 251
    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->lightSeparators(J)V

    return-void
.end method

.method protected recreateAssets(II)V
    .locals 1

    .line 195
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSpinBitmap:Landroid/graphics/Bitmap;

    .line 196
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSeparatorsBitmap:Landroid/graphics/Bitmap;

    .line 197
    iget p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mPassiveCoeff:F

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->setSelectorPaintCoeff(F)V

    return-void
.end method

.method public setActiveCoeff(F)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mActiveCoeff:F

    .line 225
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->buildDimSelectorWheelAnimator()V

    return-void
.end method

.method public setPassiveCoeff(F)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mPassiveCoeff:F

    .line 230
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->buildDimSelectorWheelAnimator()V

    return-void
.end method

.method public setSelectionDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected abstract setSelectorPaintCoeff(F)V
.end method

.method public setSeparatorsPaintAlpha(I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->mSeparatorsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 208
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->invalidate()V

    return-void
.end method
