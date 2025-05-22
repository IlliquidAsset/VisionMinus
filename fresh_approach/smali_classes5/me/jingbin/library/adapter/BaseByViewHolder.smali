.class public abstract Lme/jingbin/library/adapter/BaseByViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseByViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field private byRecyclerView:Lme/jingbin/library/ByRecyclerView;

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

    .line 44
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lme/jingbin/library/adapter/BaseByViewHolder;->views:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lme/jingbin/library/adapter/BaseByViewHolder;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lme/jingbin/library/adapter/BaseByViewHolder;->checkByRecyclerView()V

    return-void
.end method

.method static synthetic access$100(Lme/jingbin/library/adapter/BaseByViewHolder;)Lme/jingbin/library/ByRecyclerView;
    .locals 0

    .line 34
    iget-object p0, p0, Lme/jingbin/library/adapter/BaseByViewHolder;->byRecyclerView:Lme/jingbin/library/ByRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lme/jingbin/library/adapter/BaseByViewHolder;)I
    .locals 0

    .line 34
    invoke-direct {p0}, Lme/jingbin/library/adapter/BaseByViewHolder;->getClickPosition()I

    move-result p0

    return p0
.end method

.method private checkByRecyclerView()V
    .locals 2

    .line 458
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByViewHolder;->byRecyclerView:Lme/jingbin/library/ByRecyclerView;

    if-eqz v0, :cond_0

    return-void

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "byRecyclerView is null! Please use setByRecyclerView() bind!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getClickPosition()I
    .locals 2

    .line 443
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByViewHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lme/jingbin/library/adapter/BaseByViewHolder;->byRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lme/jingbin/library/adapter/BaseByViewHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lme/jingbin/library/adapter/BaseByViewHolder;->byRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1}, Lme/jingbin/library/ByRecyclerView;->getCustomTopItemViewCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addOnClickListener(I)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 1

    .line 398
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 403
    :cond_0
    new-instance v0, Lme/jingbin/library/adapter/BaseByViewHolder$1;

    invoke-direct {v0, p0}, Lme/jingbin/library/adapter/BaseByViewHolder$1;-><init>(Lme/jingbin/library/adapter/BaseByViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p0
.end method

.method public addOnLongClickListener(I)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 1

    .line 425
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 428
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 430
    :cond_0
    new-instance v0, Lme/jingbin/library/adapter/BaseByViewHolder$2;

    invoke-direct {v0, p0}, Lme/jingbin/library/adapter/BaseByViewHolder$2;-><init>(Lme/jingbin/library/adapter/BaseByViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-object p0
.end method

.method public getByRecyclerView()Lme/jingbin/library/ByRecyclerView;
    .locals 1

    .line 464
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByViewHolder;->byRecyclerView:Lme/jingbin/library/ByRecyclerView;

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

    .line 58
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByViewHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lme/jingbin/library/adapter/BaseByViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lme/jingbin/library/adapter/BaseByViewHolder;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public linkify(I)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 1

    .line 210
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0xf

    .line 211
    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    return-object p0
.end method

.method protected abstract onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/jingbin/library/adapter/BaseByViewHolder<",
            "TT;>;TT;I)V"
        }
    .end annotation
.end method

.method public setAlpha(IF)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 3

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p2, 0x1

    .line 171
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 172
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-object p0
.end method

.method public setBackgroundColor(II)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public setBackgroundRes(II)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method public setByRecyclerView(Lme/jingbin/library/ByRecyclerView;)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 453
    iput-object p1, p0, Lme/jingbin/library/adapter/BaseByViewHolder;->byRecyclerView:Lme/jingbin/library/ByRecyclerView;

    return-object p0
.end method

.method public setChecked(IZ)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 1

    .line 341
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 343
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 344
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-object p0
.end method

.method public setEnabled(IZ)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 357
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 358
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-object p0
.end method

.method public setGone(IZ)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 186
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 156
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 147
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setImageResource(II)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 94
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setMax(II)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 273
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 274
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    return-object p0
.end method

.method public setOnCheckedChangeListener(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 370
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    .line 371
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 385
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setProgress(II)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 246
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setProgress(III)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 260
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 261
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-object p0
.end method

.method public setRating(IF)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 287
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setRating(IFI)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    .line 301
    invoke-virtual {p1, p3}, Landroid/widget/RatingBar;->setMax(I)V

    .line 302
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setTag(IILjava/lang/Object;)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 329
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 315
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setText(II)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public setText(ILjava/lang/CharSequence;)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextColor(II)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTypeface(ILandroid/graphics/Typeface;)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 219
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 220
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 221
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit16 p2, p2, 0x80

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-object p0
.end method

.method public varargs setTypeface(Landroid/graphics/Typeface;[I)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 4

    .line 229
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 230
    invoke-virtual {p0, v2}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 232
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setVisible(IZ)Lme/jingbin/library/adapter/BaseByViewHolder;
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 199
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
