.class public Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;
.super Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;
.source "NumericWheelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private formatFunction:Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemCountTemp:I

.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 66
    invoke-direct {p0, p1, v0, v1}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 103
    iput p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->minValue:I

    .line 104
    iput p3, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->maxValue:I

    .line 105
    iput-object p4, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->formatFunction:Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction;

    .line 107
    new-instance p1, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$2;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$2;-><init>(Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$1;

    invoke-direct {v0, p4}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction;)V

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->mItemCountTemp:I

    return p1
.end method

.method public static addExact(II)I
    .locals 1

    add-int v0, p0, p1

    xor-int/2addr p0, v0

    xor-int/2addr p1, v0

    and-int/2addr p0, p1

    if-ltz p0, :cond_0

    return v0

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static negateExact(I)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    neg-int p0, p0

    return p0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "integer overflow"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 1

    if-ltz p1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 129
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->minValue:I

    add-int/2addr v0, p1

    .line 130
    iget-object p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->formatFunction:Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter$IntParamFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemsCount()I
    .locals 2

    .line 137
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->mItemCountTemp:I

    if-lez v0, :cond_0

    return v0

    .line 140
    :cond_0
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->minValue:I

    invoke-static {v1}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->negateExact(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->addExact(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->addExact(II)I

    move-result v0

    iput v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->mItemCountTemp:I

    return v0
.end method

.method public setMaxValue(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->maxValue:I

    .line 123
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->notifyDataInvalidatedEvent()V

    return-void
.end method

.method public setMinValue(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->minValue:I

    .line 118
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/adapters/NumericWheelAdapter;->notifyDataInvalidatedEvent()V

    return-void
.end method
