.class public Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MediaLibListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/adapter/MediaLibListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewHolder"
.end annotation


# instance fields
.field private mPreview:Lcom/github/chrisbanes/photoview/PhotoView;

.field private mVideoPreview:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 190
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 191
    sget v0, Lcom/powervision/media/R$id;->media_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/chrisbanes/photoview/PhotoView;

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;->mPreview:Lcom/github/chrisbanes/photoview/PhotoView;

    const/high16 v1, 0x41100000    # 9.0f

    .line 192
    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setMaximumScale(F)V

    .line 193
    sget v0, Lcom/powervision/media/R$id;->video_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;->mVideoPreview:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;)Lcom/github/chrisbanes/photoview/PhotoView;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;->mPreview:Lcom/github/chrisbanes/photoview/PhotoView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$ListViewHolder;->mVideoPreview:Landroid/widget/ImageView;

    return-object p0
.end method
