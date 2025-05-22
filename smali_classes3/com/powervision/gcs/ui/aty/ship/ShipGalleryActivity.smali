.class public Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "ShipGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;,
        Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$DeleteFileModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipGalleryActivity"


# instance fields
.field private aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

.field private downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

.field galleryPager:Lcom/powervision/gcs/view/GalleryViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0xd3a
    .end annotation
.end field

.field homeTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xd9d
    .end annotation
.end field

.field private index:I

.field mAdapter:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;"
        }
    .end annotation
.end field

.field mListName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mListRealName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLoadingView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xcb9
    .end annotation
.end field

.field options:Lcom/bumptech/glide/request/RequestOptions;

.field previewLayoutFooter:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf1d
    .end annotation
.end field

.field textDelete:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10df
    .end annotation
.end field

.field textDownload:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10e1
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1134
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mList:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mListName:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mListRealName:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 294
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$4;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)Lcom/powervision/localhttp/PVW4DownloadManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->startRename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipGalleryActivity$aAPGfWkRcT5RkJKnO8UQ3D9Z9J4;

    invoke-direct {v1, p0, p2, p1}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipGalleryActivity$aAPGfWkRcT5RkJKnO8UQ3D9Z9J4;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 387
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .line 84
    sget v0, Lcom/powervision/gcs/R$layout;->activity_ship_gallery:I

    return v0
.end method

.method protected getIntentData(Landroid/content/Intent;)V
    .locals 3

    .line 134
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->getIntentData(Landroid/content/Intent;)V

    const-string v0, "json"

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->index:I

    .line 139
    new-instance p1, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$3;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$3;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V

    .line 140
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 141
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 143
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 148
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mListName:Ljava/util/List;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ShipHelper;->getTempThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mListRealName:Ljava/util/List;

    invoke-static {p1}, Lcom/powervision/gcs/utils/ShipHelper;->getTempFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 92
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$mipmap;->ic_back:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 95
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 103
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {p1, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 105
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->options:Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lcom/powervision/gcs/R$drawable;->media_default:I

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 106
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->options:Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lcom/powervision/gcs/R$drawable;->media_default:I

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 108
    new-instance p1, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$1;)V

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;

    .line 109
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->galleryPager:Lcom/powervision/gcs/view/GalleryViewPager;

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/view/GalleryViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 110
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->galleryPager:Lcom/powervision/gcs/view/GalleryViewPager;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/GalleryViewPager;->setOffscreenPageLimit(I)V

    .line 111
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->galleryPager:Lcom/powervision/gcs/view/GalleryViewPager;

    iget v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->index:I

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/GalleryViewPager;->setCurrentItem(I)V

    .line 113
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->galleryPager:Lcom/powervision/gcs/view/GalleryViewPager;

    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/GalleryViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public synthetic lambda$null$0$ShipGalleryActivity()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$null$1$ShipGalleryActivity()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity$GalleryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$startRename$2$ShipGalleryActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 337
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mListName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, ""

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 340
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRename1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getTempFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShipGalleryActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRename2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getTempThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getTempFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getTempThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v1

    .line 352
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/FileUtil;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipGalleryActivity$nllFp_Spif4WfE45QgZXAJQtSgY;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipGalleryActivity$nllFp_Spif4WfE45QgZXAJQtSgY;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mListRealName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_6

    .line 364
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 371
    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getTempFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 373
    :cond_4
    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getTempThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 374
    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipHelper;->getThmFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v1

    .line 377
    :cond_5
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/FileUtil;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 381
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipGalleryActivity$hJOZmes1tFxxJ5jNvR6Fw-Owr5Y;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/aty/ship/-$$Lambda$ShipGalleryActivity$hJOZmes1tFxxJ5jNvR6Fw-Owr5Y;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 290
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

    .line 291
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipGalleryActivity;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->removeAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    return-void
.end method
