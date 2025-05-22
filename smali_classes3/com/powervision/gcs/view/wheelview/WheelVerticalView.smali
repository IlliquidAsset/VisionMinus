.class public Lcom/powervision/gcs/view/wheelview/WheelVerticalView;
.super Lcom/powervision/gcs/view/wheelview/AbstractWheelView;
.source "WheelVerticalView.java"


# static fields
.field private static itemID:I = -0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field public mC:Landroid/graphics/Canvas;

.field public mCSeparators:Landroid/graphics/Canvas;

.field public mCSpin:Landroid/graphics/Canvas;

.field private mItemHeight:I

.field protected mSelectionDividerHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 86
    sget v0, Lcom/powervision/gcs/R$attr;->abstractWheelViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;

    .line 51
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->itemID:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->itemID:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemHeight:I

    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 278
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 279
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 277
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 281
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget v3, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 289
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 297
    :goto_0
    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsPadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 298
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 299
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 297
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    return p1
.end method


# virtual methods
.method protected createItemsLayout()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    .line 219
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method protected createScroller(Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)Lcom/powervision/gcs/view/wheelview/WheelScroller;
    .locals 2

    .line 169
    new-instance v0, Lcom/powervision/gcs/view/wheelview/WheelVerticalScroller;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/powervision/gcs/view/wheelview/WheelVerticalScroller;-><init>(Landroid/content/Context;Lcom/powervision/gcs/view/wheelview/WheelScroller$ScrollingListener;)V

    return-object v0
.end method

.method protected doItemsLayout()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method protected drawItems(Landroid/graphics/Canvas;)V
    .locals 13

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 315
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getMeasuredWidth()I

    move-result v0

    .line 316
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getMeasuredHeight()I

    move-result v1

    .line 317
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getItemDimension()I

    move-result v2

    .line 320
    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSpinBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 321
    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mC:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 322
    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mCSpin:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 324
    iget v3, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mCurrentItemIdx:I

    iget v5, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mFirstItemIdx:I

    sub-int/2addr v3, v5

    mul-int v3, v3, v2

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getHeight()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 325
    iget-object v5, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mC:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsPadding:I

    int-to-float v6, v6

    neg-int v3, v3

    iget v7, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mScrollingOffset:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v5, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 326
    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mC:Landroid/graphics/Canvas;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 328
    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSeparatorsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 330
    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    iget v5, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSelectionDividerHeight:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    .line 334
    iget-object v6, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 335
    iget-object v6, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mCSeparators:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/2addr v3, v2

    add-int/2addr v5, v2

    .line 340
    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 341
    iget-object v2, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mCSeparators:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 344
    :cond_0
    iget-object v4, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mCSpin:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v10, v0

    int-to-float v11, v1

    iget-object v9, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move v7, v10

    move v8, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 345
    iget-object v7, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mCSeparators:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v12, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSeparatorsPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 347
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSpinBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 348
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSeparatorsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 350
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mC:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 351
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mCSpin:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getBaseDimension()I
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getItemDimension()I
    .locals 2

    .line 194
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemHeight:I

    if-eqz v0, :cond_0

    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemHeight:I

    return v0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getBaseDimension()I

    move-result v0

    iget v1, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mVisibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected getMotionEventPosition(Landroid/view/MotionEvent;)F
    .locals 0

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method protected initAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 109
    invoke-super {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->initAttributes(Landroid/util/AttributeSet;I)V

    .line 111
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/powervision/gcs/R$styleable;->WheelVerticalView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 112
    sget p2, Lcom/powervision/gcs/R$styleable;->WheelVerticalView_selectionDividerHeight:I

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSelectionDividerHeight:I

    .line 113
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected measureLayout()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsLayout:Landroid/widget/LinearLayout;

    .line 234
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    .line 235
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 244
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 245
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 246
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 247
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 249
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->rebuildItems()Z

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->calculateLayoutWidth(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getItemDimension()I

    move-result v0

    iget v2, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mVisibleItems:I

    iget v3, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemOffsetPercent:I

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    mul-int v0, v0, v2

    .line 259
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 257
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 263
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    .line 266
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected recreateAssets(II)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/AbstractWheelView;->recreateAssets(II)V

    .line 118
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSpinBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mC:Landroid/graphics/Canvas;

    .line 119
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSpinBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mCSpin:Landroid/graphics/Canvas;

    .line 120
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSeparatorsBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mCSeparators:Landroid/graphics/Canvas;

    return-void
.end method

.method public setSelectorPaintCoeff(F)V
    .locals 19

    move-object/from16 v0, p0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getMeasuredHeight()I

    move-result v1

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->getItemDimension()I

    move-result v2

    int-to-float v3, v2

    int-to-float v8, v1

    div-float/2addr v3, v8

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v1

    div-float/2addr v3, v5

    .line 131
    iget v6, v0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mItemsDimmedAlpha:I

    int-to-float v6, v6

    sub-float v7, v1, p1

    mul-float v6, v6, v7

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v9, p1, v7

    add-float/2addr v9, v6

    .line 134
    iget v10, v0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mVisibleItems:I

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/high16 v14, -0x1000000

    const/4 v15, 0x4

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/4 v7, 0x2

    const/16 v18, 0x0

    if-ne v10, v7, :cond_0

    .line 135
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    .line 136
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    new-array v9, v12, [I

    aput v5, v9, v18

    aput v2, v9, v16

    aput v14, v9, v7

    aput v14, v9, v17

    aput v2, v9, v15

    aput v5, v9, v13

    new-array v10, v12, [F

    aput v11, v10, v18

    aput v4, v10, v16

    aput v4, v10, v7

    aput v3, v10, v17

    aput v3, v10, v15

    aput v1, v10, v13

    .line 139
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    div-float/2addr v2, v8

    sub-float v10, v1, v2

    div-float/2addr v10, v5

    add-float/2addr v2, v1

    div-float/2addr v2, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, v10

    div-float/2addr v5, v4

    mul-float v5, v5, p1

    add-float/2addr v6, v5

    .line 148
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    shl-int/lit8 v9, v9, 0x18

    .line 149
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    .line 150
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    const/16 v1, 0xa

    new-array v11, v1, [I

    aput v18, v11, v18

    aput v5, v11, v16

    aput v6, v11, v7

    aput v9, v11, v17

    aput v14, v11, v15

    aput v14, v11, v13

    aput v9, v11, v12

    const/4 v9, 0x7

    aput v6, v11, v9

    const/16 v6, 0x8

    aput v5, v11, v6

    const/16 v5, 0x9

    aput v18, v11, v5

    new-array v1, v1, [F

    const/4 v14, 0x0

    aput v14, v1, v18

    aput v10, v1, v16

    aput v10, v1, v7

    aput v4, v1, v17

    aput v4, v1, v15

    aput v3, v1, v13

    aput v3, v1, v12

    aput v2, v1, v9

    aput v2, v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    .line 154
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v2

    move-object v9, v11

    move-object v10, v1

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v1, v2

    .line 156
    :goto_0
    iget-object v2, v0, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/powervision/gcs/view/wheelview/WheelVerticalView;->invalidate()V

    return-void
.end method
