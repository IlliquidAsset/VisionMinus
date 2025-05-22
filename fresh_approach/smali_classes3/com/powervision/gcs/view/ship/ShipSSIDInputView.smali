.class public Lcom/powervision/gcs/view/ship/ShipSSIDInputView;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "ShipSSIDInputView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipSSIDInputView$OnInputFinishListener;
    }
.end annotation


# instance fields
.field private final SSID_LENGTH:I

.field private final SSID_SIZE:I

.field private final SSID_SPACING:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mInputLength:I

.field private mOnInputFinishListener:Lcom/powervision/gcs/view/ship/ShipSSIDInputView$OnInputFinishListener;

.field private mRectF:Landroid/graphics/RectF;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSSIDPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x1e

    .line 17
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->SSID_SPACING:I

    const/16 p1, 0x3c

    .line 18
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->SSID_SIZE:I

    const/4 p1, 0x6

    .line 19
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->SSID_LENGTH:I

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mSSIDPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 41
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mSSIDPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mSSIDPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mSSIDPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mRectPaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mRectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getmInputLength()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mInputLength:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 54
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mWidth:I

    .line 56
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mHeight:I

    .line 63
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mWidth:I

    add-int/lit16 v0, v0, -0x96

    const/4 v1, 0x6

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v1, :cond_0

    add-int/lit8 v5, v0, 0x1e

    mul-int v5, v5, v3

    add-int v6, v5, v0

    .line 69
    iget v7, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mHeight:I

    sub-int/2addr v7, v4

    .line 70
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v5, v5

    int-to-float v4, v4

    int-to-float v6, v6

    int-to-float v7, v7

    invoke-direct {v8, v5, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mRectF:Landroid/graphics/RectF;

    .line 71
    iget-object v4, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mRectPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {p1, v8, v5, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_0
    :goto_1
    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mInputLength:I

    if-ge v2, v1, :cond_1

    .line 76
    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v0, 0x1e

    mul-int v3, v3, v2

    add-int/2addr v1, v3

    .line 77
    iget v3, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mHeight:I

    div-int/2addr v3, v4

    .line 78
    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->text:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    add-int/lit8 v3, v3, 0xf

    int-to-float v3, v3

    iget-object v5, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mSSIDPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v2, v6

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 86
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->text:Ljava/lang/String;

    .line 87
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mInputLength:I

    .line 88
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->invalidate()V

    .line 89
    iget p2, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mInputLength:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mOnInputFinishListener:Lcom/powervision/gcs/view/ship/ShipSSIDInputView$OnInputFinishListener;

    if-eqz p2, :cond_0

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/powervision/gcs/view/ship/ShipSSIDInputView$OnInputFinishListener;->onInputFinish(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnInputFinishListener(Lcom/powervision/gcs/view/ship/ShipSSIDInputView$OnInputFinishListener;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipSSIDInputView;->mOnInputFinishListener:Lcom/powervision/gcs/view/ship/ShipSSIDInputView$OnInputFinishListener;

    return-void
.end method
