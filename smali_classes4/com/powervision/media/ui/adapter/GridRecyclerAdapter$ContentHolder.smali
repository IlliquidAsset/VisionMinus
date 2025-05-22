.class Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GridRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentHolder"
.end annotation


# instance fields
.field mContentSelect:Landroid/widget/TextView;

.field mDownImage:Landroid/widget/ImageView;

.field mImage:Landroid/widget/ImageView;

.field mMediaTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 355
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 356
    sget v0, Lcom/powervision/media/R$id;->media_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mImage:Landroid/widget/ImageView;

    .line 357
    sget v0, Lcom/powervision/media/R$id;->media_check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mContentSelect:Landroid/widget/TextView;

    .line 358
    sget v0, Lcom/powervision/media/R$id;->media_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mMediaTime:Landroid/widget/TextView;

    .line 359
    sget v0, Lcom/powervision/media/R$id;->media_icon_down:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mDownImage:Landroid/widget/ImageView;

    return-void
.end method
