.class public Lme/jingbin/library/adapter/BaseListHolder;
.super Ljava/lang/Object;
.source "BaseListHolder.java"


# instance fields
.field private itemView:Landroid/view/View;

.field private final views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lme/jingbin/library/adapter/BaseListHolder;->itemView:Landroid/view/View;

    .line 58
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lme/jingbin/library/adapter/BaseListHolder;->views:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getItemView()Landroid/view/View;
    .locals 1

    .line 62
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseListHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseListHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseListHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lme/jingbin/library/adapter/BaseListHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public linkify(I)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 1

    .line 219
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0xf

    .line 220
    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    return-object p0
.end method

.method public setAlpha(IF)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 3

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p2, 0x1

    .line 180
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 181
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-object p0
.end method

.method public setBackgroundColor(II)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public setBackgroundRes(II)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method public setChecked(IZ)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 1

    .line 350
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 352
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 353
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-object p0
.end method

.method public setEnabled(IZ)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 366
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 367
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-object p0
.end method

.method public setGone(IZ)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 195
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 165
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 156
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setImageResource(II)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setMax(II)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 283
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-object p0
.end method

.method public setOnCheckedChangeListener(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 379
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    .line 380
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p0
.end method

.method public setProgress(II)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 255
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setProgress(III)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 268
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 269
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 270
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setRating(IF)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 296
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setRating(IFI)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 309
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 310
    invoke-virtual {p1, p3}, Landroid/widget/RatingBar;->setMax(I)V

    .line 311
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setTag(IILjava/lang/Object;)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 337
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 338
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 323
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 324
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setText(II)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public setText(ILjava/lang/CharSequence;)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextColor(II)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 142
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTypeface(ILandroid/graphics/Typeface;)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 229
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit16 p2, p2, 0x80

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-object p0
.end method

.method public varargs setTypeface(Landroid/graphics/Typeface;[I)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 4

    .line 238
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 239
    invoke-virtual {p0, v2}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 240
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 241
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setVisible(IZ)Lme/jingbin/library/adapter/BaseListHolder;
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseListHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 208
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
