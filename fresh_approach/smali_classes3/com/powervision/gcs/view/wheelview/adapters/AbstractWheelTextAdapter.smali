.class public abstract Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;
.super Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;
.source "AbstractWheelTextAdapter.java"


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0xefeff0

.field public static final DEFAULT_TEXT_SIZE:I = 0x18

.field public static final LABEL_COLOR:I = -0x8fff90

.field protected static final NO_RESOURCE:I = 0x0

.field public static final TEXT_VIEW_ITEM_RESOURCE:I = -0x1


# instance fields
.field protected context:Landroid/content/Context;

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected itemResourceId:I

.field protected itemTextResourceId:I

.field private textColor:I

.field private textSize:I

.field private textTypeface:Landroid/graphics/Typeface;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelAdapter;-><init>()V

    const v0, -0xefeff0

    .line 61
    iput v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->textColor:I

    const/16 v0, 0x18

    .line 62
    iput v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->textSize:I

    .line 101
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    .line 102
    iput p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    .line 103
    iput p3, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    const-string p2, "layout_inflater"

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 1

    if-nez p2, :cond_0

    .line 273
    :try_start_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 274
    check-cast p1, Landroid/widget/TextView;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 276
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 278
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object p1, v0

    goto :goto_1

    :goto_0
    const-string p2, "AbstractWheelAdapter"

    const-string v0, "You must supply a resource ID for a TextView"

    .line 283
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 301
    :cond_1
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;Z)V
    .locals 2

    .line 241
    sget v0, Lcom/powervision/gcs/R$id;->wheel_text_view_configured_state:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 243
    :cond_0
    sget v0, Lcom/powervision/gcs/R$id;->wheel_text_view_configured_state:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->onConfigureTextView(Landroid/widget/TextView;Z)V

    :cond_1
    return-void
.end method

.method protected getDefaultTextStyle()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 226
    iget p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 228
    :cond_0
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 229
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;Z)V

    :cond_1
    return-object p1
.end method

.method public getEmptyItemResource()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    if-nez p2, :cond_0

    .line 207
    iget p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    invoke-direct {p0, p2, p3}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 209
    :cond_0
    iget p3, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-direct {p0, p2, p3}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 211
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 215
    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne p1, p4, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 216
    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;Z)V

    :cond_3
    return-object p2

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemResource()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    return v0
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->textSize:I

    return v0
.end method

.method protected onConfigureTextView(Landroid/widget/TextView;Z)V
    .locals 1

    .line 249
    iget p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 250
    iget p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->textColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x11

    .line 251
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 252
    iget p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->textSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x1

    .line 253
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLines(I)V

    .line 255
    :cond_0
    iget-object p2, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->textTypeface:Landroid/graphics/Typeface;

    if-eqz p2, :cond_1

    .line 256
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 258
    :cond_1
    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->getDefaultTextStyle()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void
.end method

.method public setEmptyItemResource(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return-void
.end method

.method public setItemResource(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    return-void
.end method

.method public setItemTextResource(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->textColor:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->textSize:I

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/adapters/AbstractWheelTextAdapter;->textTypeface:Landroid/graphics/Typeface;

    return-void
.end method
