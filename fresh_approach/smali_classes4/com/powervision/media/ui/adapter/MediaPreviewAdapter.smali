.class public Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "MediaPreviewAdapter.java"


# instance fields
.field private fragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/powervision/media/ui/fragment/MediaPreviewFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 30
    iput-object p2, p0, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;->mList:Ljava/util/List;

    .line 31
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;->fragments:Ljava/util/Set;

    return-void
.end method

.method private get(I)Lcom/powervision/media/ui/fragment/MediaPreviewFragment;
    .locals 4

    .line 48
    new-instance v0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    invoke-direct {v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    iget-object v2, p0, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "model"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "index"

    .line 51
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;->fragments:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;->get(I)Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    invoke-direct {v0}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    iget-object v2, p0, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "model"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "index"

    .line 40
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/fragment/MediaPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;->fragments:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/adapter/MediaPreviewAdapter;->get(I)Lcom/powervision/media/ui/fragment/MediaPreviewFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method
