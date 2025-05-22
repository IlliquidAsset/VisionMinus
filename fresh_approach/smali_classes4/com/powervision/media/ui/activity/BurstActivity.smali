.class public Lcom/powervision/media/ui/activity/BurstActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "BurstActivity.java"

# interfaces
.implements Lcom/powervision/media/ui/view/IBurstView;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/media/ui/adapter/BurstAdapter$DeleteStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/media/presenter/impl/BurstPresenter;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;",
        "Lcom/powervision/media/ui/view/IBurstView;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/powervision/media/ui/adapter/BurstAdapter$DeleteStateListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/powervision/media/ui/adapter/BurstAdapter;

.field private mBack:Landroid/widget/ImageView;

.field private mBurstId:Ljava/lang/String;

.field private mBurstInfo:Lcom/powervision/localhttp/entity/MediaLib;

.field private mBurstRoot:Landroid/widget/LinearLayout;

.field private mCollect:Landroid/widget/ImageView;

.field private mCurrentPosition:I

.field private mDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDelete:Landroid/widget/ImageView;

.field private mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/BurstInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDown:Landroid/widget/ImageView;

.field private mHorManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mIndex:I

.field private mProgress:Lcom/powervision/base/views/CustomProgress;

.field private mRecyclerView:Lme/jingbin/library/ByRecyclerView;

.field private mSelect:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mVerManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 61
    iput-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mCurrentPosition:I

    return-void
.end method

.method static synthetic access$002(Lcom/powervision/media/ui/activity/BurstActivity;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mCurrentPosition:I

    return p1
.end method

.method private dismissProgress()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {v0}, Lcom/powervision/base/views/CustomProgress;->dismiss()V

    :cond_0
    return-void
.end method

.method private resetSelectData()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mAdapter:Lcom/powervision/media/ui/adapter/BurstAdapter;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/BurstAdapter;->getSelect()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/localhttp/entity/BurstInfo;

    const/4 v2, 0x0

    .line 278
    invoke-virtual {v1, v2}, Lcom/powervision/localhttp/entity/BurstInfo;->setSelected(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showProgress(Ljava/lang/String;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 301
    invoke-static {p0, p1, v0, v1}, Lcom/powervision/base/views/CustomProgress;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/powervision/base/views/CustomProgress;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {v0, p1}, Lcom/powervision/base/views/CustomProgress;->setMessage(Ljava/lang/CharSequence;)V

    .line 304
    iget-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mProgress:Lcom/powervision/base/views/CustomProgress;

    invoke-virtual {p1}, Lcom/powervision/base/views/CustomProgress;->show()V

    return-void
.end method

.method private workDeleteUpdate()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/powervision/media/R$string;->AP03_MediaLib_79:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDelete:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mAdapter:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-virtual {v0}, Lcom/powervision/media/ui/adapter/BurstAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private workScreenChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mVerManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mHorManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    :goto_0
    invoke-virtual {v0, p1}, Lme/jingbin/library/ByRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public deleteBurstFail()V
    .locals 1

    .line 290
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->dismissProgress()V

    .line 291
    sget v0, Lcom/powervision/media/R$string;->AP03_MediaLib_34:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(I)V

    return-void
.end method

.method public deleteBurstSuccess(Z)V
    .locals 4

    .line 235
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    iget v1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDataArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 240
    iget-object v1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstInfo:Lcom/powervision/localhttp/entity/MediaLib;

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v1, 0x2

    .line 244
    iget-object v3, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstInfo:Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v1

    const/16 v3, 0xf36

    invoke-virtual {v1, v3, v0}, Lcom/powervision/base/rxbus/RxBus;->post(ILjava/lang/Object;)V

    if-nez p1, :cond_2

    .line 247
    iget-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v2, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->workDeleteUpdate()V

    goto :goto_1

    .line 249
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->finish()V

    .line 255
    :goto_1
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->dismissProgress()V

    return-void
.end method

.method public deleteState(ZI)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mTitle:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v1, Lcom/powervision/media/R$string;->AP03_MediaLib_80:I

    invoke-virtual {p0, v1}, Lcom/powervision/media/ui/activity/BurstActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mTitle:Landroid/widget/TextView;

    sget p2, Lcom/powervision/media/R$string;->AP03_MediaLib_79:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method protected getLayoutRes()I
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 77
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 79
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 80
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->systemFullScreen()V

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 83
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 85
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    :cond_0
    sget v0, Lcom/powervision/media/R$layout;->media_burst_activity:I

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "burst"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/powervision/localhttp/entity/MediaLib;

    iput-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstInfo:Lcom/powervision/localhttp/entity/MediaLib;

    .line 120
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mIndex:I

    .line 121
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstInfo:Lcom/powervision/localhttp/entity/MediaLib;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/powervision/localhttp/entity/MediaLib;->getAssetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstId:Ljava/lang/String;

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media---burst= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBack:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mSelect:Landroid/widget/TextView;

    sget v3, Lcom/powervision/media/R$string;->AP03_Msg_120:I

    invoke-virtual {p0, v3}, Lcom/powervision/media/ui/activity/BurstActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mSelect:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDataArray:Ljava/util/ArrayList;

    .line 137
    iget-object v2, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstInfo:Lcom/powervision/localhttp/entity/MediaLib;

    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {v2}, Lcom/powervision/localhttp/entity/MediaLib;->getImages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    new-instance v2, Lcom/powervision/media/widgets/GalleryItemDecoration;

    invoke-direct {v2}, Lcom/powervision/media/widgets/GalleryItemDecoration;-><init>()V

    invoke-virtual {v0, v2}, Lme/jingbin/library/ByRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 142
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mHorManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 143
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mVerManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 144
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/media/ui/activity/BurstActivity;->workScreenChanged(Landroid/content/res/Configuration;)V

    .line 146
    new-instance v0, Lcom/powervision/media/ui/adapter/BurstAdapter;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDataArray:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/powervision/media/ui/adapter/BurstAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mAdapter:Lcom/powervision/media/ui/adapter/BurstAdapter;

    .line 147
    iget-object v1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v1, v0}, Lme/jingbin/library/ByRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 149
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 94
    new-instance v0, Lcom/powervision/media/ui/activity/-$$Lambda$BurstActivity$thRp0pdJi40_COiAqIESHPsnkcU;

    invoke-direct {v0, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$BurstActivity$thRp0pdJi40_COiAqIESHPsnkcU;-><init>(Lcom/powervision/media/ui/activity/BurstActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 106
    :cond_0
    sget p1, Lcom/powervision/media/R$id;->burst_root:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstRoot:Landroid/widget/LinearLayout;

    .line 107
    sget p1, Lcom/powervision/media/R$id;->media_back:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBack:Landroid/widget/ImageView;

    .line 108
    sget p1, Lcom/powervision/media/R$id;->media_title:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mTitle:Landroid/widget/TextView;

    .line 109
    sget p1, Lcom/powervision/media/R$id;->media_detail:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mSelect:Landroid/widget/TextView;

    .line 110
    sget p1, Lcom/powervision/media/R$id;->burst_list:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lme/jingbin/library/ByRecyclerView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    .line 111
    sget p1, Lcom/powervision/media/R$id;->media_collection:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mCollect:Landroid/widget/ImageView;

    .line 112
    sget p1, Lcom/powervision/media/R$id;->media_download:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDown:Landroid/widget/ImageView;

    .line 113
    sget p1, Lcom/powervision/media/R$id;->media_delete:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDelete:Landroid/widget/ImageView;

    return-void
.end method

.method public synthetic lambda$initView$0$BurstActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 95
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 99
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    .line 100
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    .line 101
    iget-object v3, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 103
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onClick$1$BurstActivity(Landroid/view/View;)V
    .locals 3

    .line 200
    sget p1, Lcom/powervision/media/R$string;->AP03_MediaLib_77:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->showProgress(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mAdapter:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-virtual {p1}, Lcom/powervision/media/ui/adapter/BurstAdapter;->getSelect()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDeleteList:Ljava/util/ArrayList;

    .line 202
    iget-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/media/presenter/impl/BurstPresenter;

    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBurstId:Ljava/lang/String;

    iget-object v1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDeleteList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDataArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v2}, Lcom/powervision/media/presenter/impl/BurstPresenter;->deleteBurst(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 185
    sget v0, Lcom/powervision/media/R$id;->media_back:I

    if-ne p1, v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->resetSelectData()V

    .line 187
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->finish()V

    goto :goto_0

    .line 188
    :cond_0
    sget v0, Lcom/powervision/media/R$id;->media_detail:I

    if-ne p1, v0, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->resetSelectData()V

    .line 190
    invoke-virtual {p0}, Lcom/powervision/media/ui/activity/BurstActivity;->finish()V

    goto :goto_0

    .line 191
    :cond_1
    sget v0, Lcom/powervision/media/R$id;->media_delete:I

    if-ne p1, v0, :cond_3

    .line 192
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->get()Lcom/powervision/gcs/usb2/GCSConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GCSConnectionManager;->isAp03Connected()Z

    move-result p1

    if-nez p1, :cond_2

    .line 193
    sget p1, Lcom/powervision/media/R$string;->AP03_Home_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 197
    sget p1, Lcom/powervision/media/R$string;->AP03_MediaLib_81:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_97:I

    .line 198
    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lcom/powervision/media/R$string;->App_MediaLib_20:I

    invoke-virtual {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/powervision/media/ui/activity/-$$Lambda$BurstActivity$0kMVImeZUDjcqC-xDZXeuWvUoMU;

    invoke-direct {v5, p0}, Lcom/powervision/media/ui/activity/-$$Lambda$BurstActivity$0kMVImeZUDjcqC-xDZXeuWvUoMU;-><init>(Lcom/powervision/media/ui/activity/BurstActivity;)V

    const/4 v6, 0x0

    move-object v0, p0

    .line 197
    invoke-static/range {v0 .. v6}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Lcom/powervision/base/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/powervision/media/ui/activity/BurstActivity;->workScreenChanged(Landroid/content/res/Configuration;)V

    .line 211
    iget-object p1, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    iget v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Lme/jingbin/library/ByRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast v0, Lcom/powervision/media/presenter/impl/BurstPresenter;

    invoke-virtual {v0}, Lcom/powervision/media/presenter/impl/BurstPresenter;->removeListener()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mAdapter:Lcom/powervision/media/ui/adapter/BurstAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mAdapter:Lcom/powervision/media/ui/adapter/BurstAdapter;

    .line 324
    :cond_1
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mAdapter:Lcom/powervision/media/ui/adapter/BurstAdapter;

    invoke-virtual {v0, p0}, Lcom/powervision/media/ui/adapter/BurstAdapter;->setDeleteStateListener(Lcom/powervision/media/ui/adapter/BurstAdapter$DeleteStateListener;)V

    .line 163
    iget-object v0, p0, Lcom/powervision/media/ui/activity/BurstActivity;->mRecyclerView:Lme/jingbin/library/ByRecyclerView;

    new-instance v1, Lcom/powervision/media/ui/activity/BurstActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/media/ui/activity/BurstActivity$1;-><init>(Lcom/powervision/media/ui/activity/BurstActivity;)V

    invoke-virtual {v0, v1}, Lme/jingbin/library/ByRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
