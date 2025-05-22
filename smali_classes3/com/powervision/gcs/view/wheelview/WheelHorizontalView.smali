.class public Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;
.super Lcom/powervision/gcs/view/wheelview/AbstractWheelView;
.source "WheelHorizontalView.java"


# static fields
.field private static itemID:I = -0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private itemWidth:I

.field protected mSelectionDividerWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 84
    sget v0, Lcom/powervision/gcs/R$attr;->abstractWheelViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->itemID:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->itemID:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->itemWidth:I

    return-void
.end method

.method private calculateLayoutHeight(II)I
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 299
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 300
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 298
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 302
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget v2, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 310
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 317
    :goto_0
    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x190

    .line 319
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    .line 320
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 317
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    return p1
.end method


# virtual methods
.method protected createItemsLayout()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    .line 241
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method protected createScroller(Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)Lcom/powervision/gcs/view/wheelview/WheelScroller;
    .locals 2

    .line 167
    new-instance v0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalScroller;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalScroller;-><init>(Landroid/content/Context;Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)V

    return-object v0
.end method

.method protected doItemsLayout()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method protected drawItems(Landroid/graphics/Canvas;)V
    .locals 13

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 336
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getMeasuredWidth()I

    move-result v0

    .line 337
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getMeasuredHeight()I

    move-result v1

    .line 338
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getItemDimension()I

    move-result v2

    .line 341
    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSpinBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 342
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSpinBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 343
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSpinBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 345
    iget v5, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mCurrentItemIdx:I

    iget v7, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mFirstItemIdx:I

    sub-int/2addr v5, v7

    mul-int v5, v5, v2

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getWidth()I

    move-result v7

    sub-int v7, v2, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    neg-int v5, v5

    .line 346
    iget v7, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mScrollingOffset:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsPadding:I

    int-to-float v7, v7

    invoke-virtual {v3, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 347
    iget-object v5, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 349
    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSeparatorsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 350
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSeparatorsBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 352
    iget-object v5, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    iget v7, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSelectionDividerWidth:I

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v7, v5

    .line 356
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 358
    invoke-virtual {v3, v5, v4, v7, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 359
    iget-object v8, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5, v4, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    iget-object v8, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 361
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 363
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    add-int/2addr v5, v2

    add-int/2addr v7, v2

    .line 368
    invoke-virtual {v3, v5, v4, v7, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 369
    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v4, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 370
    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v0, v0

    int-to-float v1, v1

    .line 374
    iget-object v11, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move v9, v0

    move v10, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .line 375
    iget-object v12, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSeparatorsPaint:Landroid/graphics/Paint;

    move-object v7, v3

    move v10, v0

    move v11, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 377
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSpinBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 378
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSeparatorsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 379
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getBaseDimension()I
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getItemDimension()I
    .locals 2

    .line 193
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->itemWidth:I

    if-eqz v0, :cond_0

    return v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->itemWidth:I

    return v0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getBaseDimension()I

    move-result v0

    iget v1, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mVisibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected getMotionEventPosition(Landroid/view/MotionEvent;)F
    .locals 0

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method protected initAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 107
    invoke-super {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->initAttributes(Landroid/util/AttributeSet;I)V

    .line 109
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/R$styleable;->WheelHorizontalView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 110
    sget p2, Lcom/powervision/gcs/R$styleable;->WheelHorizontalView_selectionDividerWidth:I

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSelectionDividerWidth:I

    .line 111
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected measureLayout()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    .line 255
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getItemDimension()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 256
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getHeight()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 264
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 265
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 266
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 267
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 269
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->rebuildItems()Z

    .line 271
    invoke-direct {p0, p2, v1}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->calculateLayoutHeight(II)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getItemDimension()I

    move-result v1

    iget v2, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mVisibleItems:I

    iget v3, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemOffsetPercent:I

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    mul-int v1, v1, v2

    .line 279
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getSuggestedMinimumWidth()I

    move-result v2

    .line 277
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 283
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 286
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onScrollTouchedUp()V
    .locals 6

    .line 214
    invoke-super {p0}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->onScrollTouchedUp()V

    .line 215
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ----- layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -------- dumping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 220
    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " item #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->LOG_TAG:Ljava/lang/String;

    const-string v1, " ---------- dumping finished "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSelectionDividerWidth(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSelectionDividerWidth:I

    return-void
.end method

.method public setSelectorPaintCoeff(F)V
    .locals 21

    move-object/from16 v0, p0

    .line 120
    iget v1, v0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsDimmedAlpha:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getMeasuredWidth()I

    move-result v1

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->getItemDimension()I

    move-result v2

    int-to-float v3, v2

    int-to-float v7, v1

    div-float/2addr v3, v7

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v1

    div-float/2addr v3, v5

    .line 129
    iget v6, v0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mItemsDimmedAlpha:I

    int-to-float v6, v6

    sub-float v8, v1, p1

    mul-float v6, v6, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v9, p1, v8

    add-float/2addr v9, v6

    .line 132
    iget v10, v0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mVisibleItems:I

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/high16 v14, -0x1000000

    const/4 v15, 0x4

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x3

    const/4 v8, 0x2

    if-ne v10, v8, :cond_1

    .line 133
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    .line 134
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    new-array v9, v12, [I

    aput v5, v9, v17

    aput v2, v9, v16

    aput v14, v9, v8

    aput v14, v9, v18

    aput v2, v9, v15

    aput v5, v9, v13

    new-array v10, v12, [F

    aput v11, v10, v17

    aput v4, v10, v16

    aput v4, v10, v8

    aput v3, v10, v18

    aput v3, v10, v15

    aput v1, v10, v13

    .line 137
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    div-float/2addr v2, v7

    sub-float v10, v1, v2

    div-float/2addr v10, v5

    add-float/2addr v2, v1

    div-float/2addr v2, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, v10

    div-float/2addr v5, v4

    mul-float v5, v5, p1

    add-float/2addr v6, v5

    .line 146
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 147
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    .line 148
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    const/16 v5, 0xa

    new-array v9, v5, [I

    aput v6, v9, v17

    aput v6, v9, v16

    aput v6, v9, v8

    aput v6, v9, v18

    aput v14, v9, v15

    aput v14, v9, v13

    aput v6, v9, v12

    const/4 v14, 0x7

    aput v6, v9, v14

    const/16 v19, 0x8

    aput v6, v9, v19

    const/16 v20, 0x9

    aput v6, v9, v20

    new-array v6, v5, [F

    aput v11, v6, v17

    aput v10, v6, v16

    aput v10, v6, v8

    aput v4, v6, v18

    aput v4, v6, v15

    aput v3, v6, v13

    aput v3, v6, v12

    aput v2, v6, v14

    aput v2, v6, v19

    aput v1, v6, v20

    .line 152
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v1

    move-object v3, v6

    move v6, v2

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 154
    :goto_0
    iget-object v2, v0, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/wheelview/WheelHorizontalView;->invalidate()V

    return-void
.end method
