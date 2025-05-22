.class public Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;
.super Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;
.source "GridRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;,
        Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final VIEW_TYPE_ITEM_CONTENT:I = 0x1

.field private static final VIEW_TYPE_ITEM_TIME:I


# instance fields
.field private isSelect:Z

.field private mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private mFreshMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

.field private mOriginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;Z",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/powervision/base/pinnedrecycler/PinnedHeaderAdapter;-><init>()V

    .line 389
    new-instance v0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$2;-><init>(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)V

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 75
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    .line 76
    iput-boolean p2, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->isSelect:Z

    .line 77
    iput-object p3, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mOriginList:Ljava/util/ArrayList;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mFreshMap:Ljava/util/Map;

    .line 80
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0x7

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mImageHeight:I

    iput p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mImageWidth:I

    .line 81
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 82
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 86
    :goto_0
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object p2, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mAOADownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {p1, p2}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mGroupMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mFreshMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mLRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private generalGroupMap(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mGroupMap:Ljava/util/Map;

    .line 100
    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 101
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 102
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$1;-><init>(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;)V

    .line 103
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyTitleSelectStatus(IIZ)V
    .locals 0

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 279
    iget-object p2, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/localhttp/entity/FileInfo;

    .line 280
    invoke-virtual {p2, p3}, Lcom/powervision/localhttp/entity/FileInfo;->setSelected(Z)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->notifyItemChanged(I)V

    .line 283
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mLRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public clearSelects()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getSelectList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isPinnedPosition(I)Z
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$onBindViewHolder$0$GridRecyclerAdapter(ILandroid/view/View;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->notifyGroupSelectStatus(I)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$GridRecyclerAdapter(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;Landroid/view/View;)V
    .locals 7

    .line 211
    invoke-virtual {p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->getAdapterPosition()I

    move-result p2

    .line 212
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/FileInfo;

    .line 213
    iget-boolean v1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->isSelect:Z

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mContentSelect:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 216
    iget-object p1, p1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mContentSelect:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 217
    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/entity/FileInfo;->setSelected(Z)V

    .line 222
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mGroupMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 226
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v6}, Lcom/powervision/localhttp/entity/FileInfo;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    :cond_1
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    iget-object v4, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sub-int/2addr v1, v2

    if-ne v5, v1, :cond_4

    .line 234
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p2, p1, v3}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->notifyTitleSelectStatus(IIZ)V

    goto :goto_1

    .line 237
    :cond_2
    iget-object v3, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v5, v1, :cond_4

    .line 240
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p2, p1, v2}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->notifyTitleSelectStatus(IIZ)V

    goto :goto_1

    .line 244
    :cond_3
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/powervision/media/ui/activity/PreviewActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mOriginList:Ljava/util/ArrayList;

    const-string v2, "media_model"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mOriginList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "index"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    iget-object p1, p1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public notifyGroupSelectStatus(I)V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/FileInfo;

    if-eqz v0, :cond_3

    .line 294
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isSelected()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/powervision/localhttp/entity/FileInfo;->setSelected(Z)V

    .line 297
    iget-object v2, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mGroupMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    iget-object v2, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mGroupMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 301
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 302
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/powervision/localhttp/entity/FileInfo;->setSelected(Z)V

    .line 303
    iget-object v3, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 305
    iget-object v3, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_0
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    iget-object v3, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->notifyItemRangeChanged(II)V

    .line 314
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mLRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    invoke-virtual {p1}, Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 147
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/FileInfo;

    .line 148
    invoke-virtual {p0, p2}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 149
    check-cast p1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;

    .line 150
    iget-object v0, p1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;->mTextTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v1}, Lcom/powervision/localhttp/entity/FileInfo;->getCreate_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;->mGroupSelect:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->isSelect:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-boolean v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->isSelect:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;->mGroupSelect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v1}, Lcom/powervision/localhttp/entity/FileInfo;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {v0, v3}, Lcom/powervision/localhttp/entity/FileInfo;->setSelected(Z)V

    .line 157
    :goto_0
    iget-object p1, p1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;->mGroupSelect:Landroid/widget/TextView;

    new-instance v0, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$NJUDPDiMfbcmkIlMbH_-MSkiDzg;

    invoke-direct {v0, p0, p2}, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$NJUDPDiMfbcmkIlMbH_-MSkiDzg;-><init>(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 159
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;

    .line 161
    iget-object v4, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 162
    iget v5, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mImageWidth:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 163
    iget v5, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mImageHeight:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 164
    iget-object v5, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    .line 174
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 175
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getThmPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v4, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 176
    invoke-static {v4}, Lcom/bumptech/glide/request/RequestOptions;->placeholderOf(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v6}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 178
    invoke-virtual {p1, v4}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v4, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mImage:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {p1, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const-string p1, "media"

    .line 180
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exist= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isThmExist()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " path= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getThmPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isThmExist()Z

    move-result v4

    if-nez v4, :cond_4

    .line 182
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFileExist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p1, p2, v4}, Lcom/orhanobut/logger/Printer;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mFreshMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getTempThmName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDownManager:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getThm_file_path()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getAP03ThmDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getTempThmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p2, v4, v5}, Lcom/powervision/localhttp/PVW4DownloadManager;->addHighLevelDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 188
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getThm_file_path()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget p2, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 189
    invoke-static {p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholderOf(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    sget v4, Lcom/powervision/media/R$mipmap;->image_item_default:I

    .line 190
    invoke-virtual {p2, v4}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    .line 189
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v6}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 192
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p2, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mImage:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 195
    :cond_4
    :goto_1
    iget-object p1, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mContentSelect:Landroid/widget/TextView;

    iget-boolean p2, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->isSelect:Z

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    const/16 p2, 0x8

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-boolean p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->isSelect:Z

    if-eqz p1, :cond_6

    .line 197
    iget-object p1, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mContentSelect:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_3

    .line 199
    :cond_6
    invoke-virtual {v0, v3}, Lcom/powervision/localhttp/entity/FileInfo;->setSelected(Z)V

    .line 201
    :goto_3
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "record"

    .line 202
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 203
    iget-object p1, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mMediaTime:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object p1, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mMediaTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->getDuration()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/powervision/base/utils/TimeUtils;->returnMediaTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 206
    :cond_7
    iget-object p1, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mMediaTime:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :goto_4
    iget-object p1, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->mDownImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/FileInfo;->isDone()Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 v2, 0x0

    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object p1, v1, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$BTzUZPhCiQBUS_zjgtH7cq17-dw;

    invoke-direct {p2, p0, v1}, Lcom/powervision/media/ui/adapter/-$$Lambda$GridRecyclerAdapter$BTzUZPhCiQBUS_zjgtH7cq17-dw;-><init>(Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 139
    new-instance p2, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$layout;->media_item_title:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$TitleHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 141
    :cond_0
    new-instance p2, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$layout;->media_item_content:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter$ContentHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mDataList:Ljava/util/ArrayList;

    .line 130
    iput-object p2, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mOriginList:Ljava/util/ArrayList;

    .line 131
    invoke-direct {p0, p2}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->generalGroupMap(Ljava/util/ArrayList;)V

    .line 132
    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setLRecyclerView(Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mLRecyclerView:Lcom/powervision/base/refreshloadrecycler/LPinnedRecyclerView;

    return-void
.end method

.method public setSelectStatus(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->isSelect:Z

    .line 326
    iget-object p1, p0, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->mSelects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 327
    invoke-virtual {p0}, Lcom/powervision/media/ui/adapter/GridRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method
