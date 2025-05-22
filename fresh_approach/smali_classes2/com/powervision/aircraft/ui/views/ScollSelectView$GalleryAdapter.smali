.class Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ScollSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/ScollSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GalleryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private eW:I

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private missageListener:Lcom/powervision/aircraft/ui/views/ScollSelectView$MessageLisetener;

.field private wH:I

.field private wW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/powervision/aircraft/ui/views/ScollSelectView$MessageLisetener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/powervision/aircraft/ui/views/ScollSelectView$MessageLisetener;",
            ")V"
        }
    .end annotation

    .line 289
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 290
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 291
    iput-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->mDatas:Ljava/util/List;

    .line 292
    iput-object p3, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->missageListener:Lcom/powervision/aircraft/ui/views/ScollSelectView$MessageLisetener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 281
    check-cast p1, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->onBindViewHolder(Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;I)V
    .locals 2

    .line 338
    iget-object v0, p1, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;->mTxt:Lcom/powervision/aircraft/ui/views/RoateTextView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/powervision/aircraft/ui/views/RoateTextView;->setDrawText(Ljava/lang/String;)V

    .line 339
    iget-object p1, p1, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;->mTxt:Lcom/powervision/aircraft/ui/views/RoateTextView;

    iget p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->wW:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/powervision/aircraft/ui/views/RoateTextView;->setLength(F)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;
    .locals 2

    .line 314
    iget p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->eW:I

    if-nez p2, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x5

    iput p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->eW:I

    .line 316
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->wH:I

    .line 317
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->wW:I

    .line 318
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->missageListener:Lcom/powervision/aircraft/ui/views/ScollSelectView$MessageLisetener;

    if-eqz p2, :cond_0

    .line 319
    invoke-interface {p2}, Lcom/powervision/aircraft/ui/views/ScollSelectView$MessageLisetener;->sendMessage()V

    .line 322
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_roat_textview:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 323
    new-instance p2, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;-><init>(Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;Landroid/view/View;)V

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 325
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->eW:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 326
    iget v1, p0, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter;->wH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 327
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    sget v0, Lcom/powervision/aircraft/R$id;->tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/ui/views/RoateTextView;

    iput-object p1, p2, Lcom/powervision/aircraft/ui/views/ScollSelectView$GalleryAdapter$ViewHolder;->mTxt:Lcom/powervision/aircraft/ui/views/RoateTextView;

    return-object p2
.end method
