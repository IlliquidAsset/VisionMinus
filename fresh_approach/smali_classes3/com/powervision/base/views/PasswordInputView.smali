.class public Lcom/powervision/base/views/PasswordInputView;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "PasswordInputView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/PasswordInputView$InputListener;,
        Lcom/powervision/base/views/PasswordInputView$PwdStyle;,
        Lcom/powervision/base/views/PasswordInputView$BorderStyle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PasswordInputView"


# instance fields
.field private asterisk:Ljava/lang/String;

.field private borderColor:I

.field private borderStyle:I

.field private boxWidth:F

.field private inputBorderColor:I

.field private inputListener:Lcom/powervision/base/views/PasswordInputView$InputListener;

.field private linesArray:[F

.field private maxLength:I

.field private metrics:Landroid/graphics/Paint$FontMetrics;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pwdColor:I

.field private pwdStyle:I

.field private radius:I

.field private radiusArray:[F

.field private rectF:Landroid/graphics/RectF;

.field private spacing:I

.field private strokeWidth:F

.field private textLength:I

.field private xfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/powervision/base/views/PasswordInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/base/views/PasswordInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 49
    iput p3, p0, Lcom/powervision/base/views/PasswordInputView;->textLength:I

    const/16 p3, 0xc

    new-array p3, p3, [F

    .line 51
    iput-object p3, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    const/16 p3, 0x8

    new-array p3, p3, [F

    .line 52
    iput-object p3, p0, Lcom/powervision/base/views/PasswordInputView;->radiusArray:[F

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/PasswordInputView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private checkRadius(II)V
    .locals 3

    int-to-float p1, p1

    .line 148
    iget v0, p0, Lcom/powervision/base/views/PasswordInputView;->maxLength:I

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/powervision/base/views/PasswordInputView;->spacing:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->boxWidth:F

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    div-float/2addr p1, v0

    .line 150
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 151
    iget p2, p0, Lcom/powervision/base/views/PasswordInputView;->radius:I

    int-to-float v0, p2

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    const-string p2, "PasswordInputView"

    const-string v0, "radius is too large, reset it"

    .line 152
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int p1, p1

    .line 153
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->radius:I

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    const/4 p1, 0x0

    .line 155
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->radius:I

    :cond_1
    :goto_0
    return-void
.end method

.method private checkSpacing(I)V
    .locals 2

    .line 161
    iget v0, p0, Lcom/powervision/base/views/PasswordInputView;->spacing:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/powervision/base/views/PasswordInputView;->maxLength:I

    add-int/lit8 v1, v1, -0x1

    mul-int v1, v1, v0

    if-lt v1, p1, :cond_1

    :cond_0
    const-string p1, "PasswordInputView"

    const-string v0, "spacing is too large, reset it to zero"

    .line 162
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->spacing:I

    :cond_1
    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;I)V
    .locals 8

    .line 188
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/base/views/PasswordInputView;->textLength:I

    if-ge p2, v1, :cond_0

    iget v1, p0, Lcom/powervision/base/views/PasswordInputView;->inputBorderColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/powervision/base/views/PasswordInputView;->borderColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget v0, p0, Lcom/powervision/base/views/PasswordInputView;->borderStyle:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 242
    :cond_1
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 192
    :cond_2
    iget v0, p0, Lcom/powervision/base/views/PasswordInputView;->radius:I

    if-nez v0, :cond_5

    .line 196
    iget v0, p0, Lcom/powervision/base/views/PasswordInputView;->spacing:I

    if-nez v0, :cond_4

    if-nez p2, :cond_3

    .line 198
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 200
    :cond_3
    invoke-direct {p0}, Lcom/powervision/base/views/PasswordInputView;->fillLinesArray()V

    .line 201
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 204
    :cond_4
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 209
    :cond_5
    iget v0, p0, Lcom/powervision/base/views/PasswordInputView;->spacing:I

    if-nez v0, :cond_8

    if-nez p2, :cond_6

    .line 211
    invoke-direct {p0, v1}, Lcom/powervision/base/views/PasswordInputView;->fillRadiusArray(Z)V

    .line 212
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->path:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 213
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->radiusArray:[F

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 214
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 215
    :cond_6
    iget v0, p0, Lcom/powervision/base/views/PasswordInputView;->maxLength:I

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_7

    const/16 p2, 0x1f

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p1, v0, v0, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result p2

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, v1}, Lcom/powervision/base/views/PasswordInputView;->fillRadiusArray(Z)V

    .line 221
    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 222
    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/powervision/base/views/PasswordInputView;->radiusArray:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 223
    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 225
    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/powervision/base/views/PasswordInputView;->xfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 226
    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 227
    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 229
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 231
    :cond_7
    invoke-direct {p0}, Lcom/powervision/base/views/PasswordInputView;->fillLinesArray()V

    .line 232
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto :goto_1

    .line 235
    :cond_8
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->path:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 236
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/powervision/base/views/PasswordInputView;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 237
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private drawPassword(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/powervision/base/views/PasswordInputView;->pwdColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    iget v0, p0, Lcom/powervision/base/views/PasswordInputView;->pwdStyle:I

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/text/Editable;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/base/views/PasswordInputView;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/base/views/PasswordInputView;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->asterisk:Ljava/lang/String;

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/base/views/PasswordInputView;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/powervision/base/views/PasswordInputView;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, v0

    div-float/2addr p2, v1

    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    iget-object v2, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private fillLinesArray()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 291
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 293
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 294
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 296
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 297
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 299
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 300
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 302
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 303
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 305
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 306
    iget-object v0, p0, Lcom/powervision/base/views/PasswordInputView;->linesArray:[F

    iget-object v1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/16 v2, 0xb

    aput v1, v0, v2

    return-void
.end method

.method private fillRadiusArray(Z)V
    .locals 11

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->radiusArray:[F

    iget v9, p0, Lcom/powervision/base/views/PasswordInputView;->radius:I

    int-to-float v10, v9

    aput v10, p1, v7

    int-to-float v7, v9

    .line 269
    aput v7, p1, v6

    .line 270
    aput v8, p1, v5

    .line 271
    aput v8, p1, v4

    .line 272
    aput v8, p1, v3

    .line 273
    aput v8, p1, v2

    int-to-float v2, v9

    .line 274
    aput v2, p1, v1

    int-to-float v1, v9

    .line 275
    aput v1, p1, v0

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->radiusArray:[F

    aput v8, p1, v7

    .line 278
    aput v8, p1, v6

    .line 279
    iget v6, p0, Lcom/powervision/base/views/PasswordInputView;->radius:I

    int-to-float v7, v6

    aput v7, p1, v5

    int-to-float v5, v6

    .line 280
    aput v5, p1, v4

    int-to-float v4, v6

    .line 281
    aput v4, p1, v3

    int-to-float v3, v6

    .line 282
    aput v3, p1, v2

    .line 283
    aput v8, p1, v1

    .line 284
    aput v8, p1, v0

    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/PasswordInputView;->initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->textLength:I

    .line 95
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    .line 96
    iget v1, p0, Lcom/powervision/base/views/PasswordInputView;->strokeWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 99
    iget-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getTextSize()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    iget-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->metrics:Landroid/graphics/Paint$FontMetrics;

    .line 103
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->path:Landroid/graphics/Path;

    .line 104
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    .line 107
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->xfermode:Landroid/graphics/Xfermode;

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/PasswordInputView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/powervision/base/views/PasswordInputView;->setCursorVisible(Z)V

    new-array p1, v0, [Landroid/text/InputFilter;

    .line 111
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget v1, p0, Lcom/powervision/base/views/PasswordInputView;->maxLength:I

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/PasswordInputView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 115
    sget-object v0, Lcom/powervision/base/R$styleable;->PasswordInputView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 117
    sget p2, Lcom/powervision/base/R$styleable;->PasswordInputView_pwv_maxLength:I

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/PasswordInputView;->maxLength:I

    .line 118
    sget p2, Lcom/powervision/base/R$styleable;->PasswordInputView_pwv_borderColor:I

    const v0, -0x777778

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/PasswordInputView;->borderColor:I

    .line 119
    sget p2, Lcom/powervision/base/R$styleable;->PasswordInputView_pwv_pwdColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/PasswordInputView;->pwdColor:I

    .line 120
    sget p2, Lcom/powervision/base/R$styleable;->PasswordInputView_pwv_haveInputBorderColor:I

    iget v0, p0, Lcom/powervision/base/views/PasswordInputView;->borderColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/PasswordInputView;->inputBorderColor:I

    .line 121
    sget p2, Lcom/powervision/base/R$styleable;->PasswordInputView_pwv_asterisk:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->asterisk:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 123
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->asterisk:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->asterisk:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->asterisk:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "*"

    .line 123
    iput-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->asterisk:Ljava/lang/String;

    .line 126
    :cond_2
    :goto_1
    sget p2, Lcom/powervision/base/R$styleable;->PasswordInputView_pwv_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/PasswordInputView;->radius:I

    .line 127
    sget p2, Lcom/powervision/base/R$styleable;->PasswordInputView_pwv_strokeWidth:I

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/powervision/base/views/PasswordInputView;->strokeWidth:F

    .line 128
    sget p2, Lcom/powervision/base/R$styleable;->PasswordInputView_pwv_spacing:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/PasswordInputView;->spacing:I

    .line 129
    sget p2, Lcom/powervision/base/R$styleable;->PasswordInputView_pwv_borderStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/PasswordInputView;->borderStyle:I

    .line 130
    sget p2, Lcom/powervision/base/R$styleable;->PasswordInputView_pwv_pwdStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/PasswordInputView;->pwdStyle:I

    .line 132
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 171
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingTop()I

    move-result v0

    .line 172
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 173
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    .line 176
    :goto_0
    iget v4, p0, Lcom/powervision/base/views/PasswordInputView;->maxLength:I

    if-ge v3, v4, :cond_1

    int-to-float v4, v2

    .line 177
    iget v5, p0, Lcom/powervision/base/views/PasswordInputView;->boxWidth:F

    iget v6, p0, Lcom/powervision/base/views/PasswordInputView;->spacing:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    int-to-float v7, v3

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    .line 178
    iget-object v6, p0, Lcom/powervision/base/views/PasswordInputView;->rectF:Landroid/graphics/RectF;

    int-to-float v7, v0

    add-float/2addr v5, v4

    int-to-float v8, v1

    invoke-virtual {v6, v4, v7, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    invoke-direct {p0, p1, v3}, Lcom/powervision/base/views/PasswordInputView;->drawBorder(Landroid/graphics/Canvas;I)V

    .line 181
    iget v4, p0, Lcom/powervision/base/views/PasswordInputView;->textLength:I

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/powervision/base/views/PasswordInputView;->drawPassword(Landroid/graphics/Canvas;I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 0

    .line 323
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onSelectionChanged(II)V

    if-ne p1, p2, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/powervision/base/views/PasswordInputView;->setSelection(I)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->onSizeChanged(IIII)V

    .line 138
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    .line 139
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 141
    invoke-direct {p0, p1}, Lcom/powervision/base/views/PasswordInputView;->checkSpacing(I)V

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/views/PasswordInputView;->checkRadius(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 313
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iput p2, p0, Lcom/powervision/base/views/PasswordInputView;->textLength:I

    .line 314
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->invalidate()V

    .line 316
    iget p2, p0, Lcom/powervision/base/views/PasswordInputView;->textLength:I

    iget p3, p0, Lcom/powervision/base/views/PasswordInputView;->maxLength:I

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/powervision/base/views/PasswordInputView;->inputListener:Lcom/powervision/base/views/PasswordInputView$InputListener;

    if-eqz p2, :cond_0

    .line 317
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/powervision/base/views/PasswordInputView$InputListener;->onInputCompleted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAsterisk(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->asterisk:Ljava/lang/String;

    goto :goto_0

    .line 386
    :cond_1
    iput-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->asterisk:Ljava/lang/String;

    .line 388
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 366
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->borderColor:I

    .line 367
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->invalidate()V

    return-void
.end method

.method public setBorderStyle(I)V
    .locals 0

    .line 397
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->borderStyle:I

    .line 398
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->invalidate()V

    return-void
.end method

.method public setInputListener(Lcom/powervision/base/views/PasswordInputView$InputListener;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/powervision/base/views/PasswordInputView;->inputListener:Lcom/powervision/base/views/PasswordInputView$InputListener;

    return-void
.end method

.method public setMaxLength(I)V
    .locals 3

    .line 354
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 355
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 357
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->maxLength:I

    .line 359
    invoke-direct {p0, v0}, Lcom/powervision/base/views/PasswordInputView;->checkSpacing(I)V

    .line 360
    invoke-direct {p0, v0, v1}, Lcom/powervision/base/views/PasswordInputView;->checkRadius(II)V

    .line 362
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->invalidate()V

    return-void
.end method

.method public setPwdColor(I)V
    .locals 0

    .line 371
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->pwdColor:I

    .line 372
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->invalidate()V

    return-void
.end method

.method public setPwdStyle(I)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->pwdStyle:I

    .line 393
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->invalidate()V

    return-void
.end method

.method public setRadius(I)V
    .locals 3

    .line 331
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 332
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 334
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->radius:I

    .line 336
    invoke-direct {p0, v0, v1}, Lcom/powervision/base/views/PasswordInputView;->checkRadius(II)V

    .line 338
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->invalidate()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 3

    .line 342
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 343
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 345
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->spacing:I

    .line 347
    invoke-direct {p0, v0}, Lcom/powervision/base/views/PasswordInputView;->checkSpacing(I)V

    .line 348
    invoke-direct {p0, v0, v1}, Lcom/powervision/base/views/PasswordInputView;->checkRadius(II)V

    .line 350
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 402
    iput p1, p0, Lcom/powervision/base/views/PasswordInputView;->strokeWidth:F

    .line 403
    invoke-virtual {p0}, Lcom/powervision/base/views/PasswordInputView;->invalidate()V

    return-void
.end method
