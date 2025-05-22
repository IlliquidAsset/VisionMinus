.class public Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;
.super Lcom/powervision/gcs/base/BaseActivity;
.source "AOAShipMediaManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;
    }
.end annotation


# static fields
.field private static final DELETE_FAILED_HANDLER:I = 0x66

.field private static final DELETE_SUCCEED_HANDLER:I = 0x65

.field public static final NO_SELECT:I = 0x2

.field public static final SELECT_ALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AOAShipMediaManager"

.field public static final UNSELECT_ALL:I = 0x1


# instance fields
.field private aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

.field private deleteModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private deleteModelTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private deletePathList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deletePathListTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

.field private handler:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;

.field private isDownloading:Z

.field private mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

.field private mDownloadNameAndPosition:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLayoutLoading:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe3a
    .end annotation
.end field

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;",
            ">;"
        }
    .end annotation
.end field

.field mMediaMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;>;"
        }
    .end annotation
.end field

.field mTextCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x10d5
    .end annotation
.end field

.field mTextSelectAll:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1056
    .end annotation
.end field

.field mTextTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1101
    .end annotation
.end field

.field private mediaFileSelectStatus:I

.field private mediaType:I

.field pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field private pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf50
    .end annotation
.end field

.field private tempPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;"
        }
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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseActivity;-><init>()V

    const/4 v0, 0x2

    .line 93
    iput v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mediaFileSelectStatus:I

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mDownloadNameAndPosition:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mMediaMap:Ljava/util/LinkedHashMap;

    .line 112
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    .line 422
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->tempPathMap:Ljava/util/Map;

    .line 424
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deleteModel:Ljava/util/List;

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathListTemp:Ljava/util/List;

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deleteModelTemp:Ljava/util/List;

    .line 570
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$1;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->handler:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;

    .line 698
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$8;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$8;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    .line 806
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$9;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$9;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)Ljava/util/Map;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->tempPathMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->tempPathMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Landroid/os/Message;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->dealWithMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)Lcom/powervision/localhttp/PVW4DownloadManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)Ljava/util/Map;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mDownloadNameAndPosition:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->checkMd5AndRename(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->isDownloading:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->isDownloading:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->checkFooterEnable()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setDeleteEnable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setDownloadEnable(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setFooterDisable()V

    return-void
.end method

.method static synthetic access$502(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mediaFileSelectStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mediaType:I

    return p0
.end method

.method static synthetic access$700(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->initDeleteList()V

    return-void
.end method

.method static synthetic access$800(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Ljava/util/Map;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->downSelectedFile(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$900(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->checkDownloadingBeforeFinish()V

    return-void
.end method

.method private checkDownloadingBeforeFinish()V
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->isDownloading:Z

    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->onBackPress()V

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->finish()V

    :goto_0
    return-void
.end method

.method private checkFooterEnable()V
    .locals 3

    .line 303
    iget-boolean v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->isDownloading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setFooterDisable()V

    .line 305
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$color;->gcs_ship_media_color_primary_unclickable:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 308
    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setDeleteEnable(Z)V

    .line 309
    invoke-direct {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setDownloadEnable(Z)V

    .line 310
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$color;->gcs_ship_media_color_primary:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private checkMd5AndRename(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "AOAShipMediaManager"

    const-string v1, "checkMd5AndRename: "

    .line 785
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$L3ACVXkIi2320NyKLU7FAxL7j9s;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;I)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 803
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 5

    .line 627
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->dismissDialog()V

    .line 648
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_23:I

    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/ToastUtil;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 629
    :cond_1
    sget p1, Lcom/powervision/gcs/R$string;->remove_success:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    .line 632
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->tempPathMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 633
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextTitle:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v1, Lcom/powervision/gcs/R$string;->MediaLib_9:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->tempPathMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 636
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathListTemp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 637
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deleteModel:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 638
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deleteModelTemp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 639
    invoke-direct {p0, v4}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setDeleteEnable(Z)V

    .line 640
    invoke-direct {p0, v4}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setDownloadEnable(Z)V

    .line 643
    invoke-static {}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->dismissDialog()V

    .line 644
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->loadAdapter()V

    :goto_0
    return-void
.end method

.method private deletePath()V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->handler:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 447
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 450
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathListTemp:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 451
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 452
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deleteModel:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deleteModelTemp:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deleteModel:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathListTemp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathListTemp:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "/"

    .line 460
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 461
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathListTemp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 466
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v1

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/powervision/localhttp/CmdModel$Builder;->deleteMultiFile(Ljava/util/List;)Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private downSelectedFile(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;)V"
        }
    .end annotation

    .line 381
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 382
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 383
    invoke-static {v1}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->isSaveToAlbumAndFileExit(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mDownloadNameAndPosition:Ljava/util/Map;

    invoke-static {v1}, Lcom/powervision/gcs/utils/ShipHelper;->getTempFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getSize()J

    move-result-wide v5

    .line 387
    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 388
    invoke-virtual {v1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->isImage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipImageDownloadPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipVideoDownloadPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v8, v0

    .line 389
    invoke-static {v1}, Lcom/powervision/gcs/utils/ShipHelper;->getTempFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v9

    .line 391
    iget-object v4, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-virtual/range {v4 .. v9}, Lcom/powervision/localhttp/PVW4DownloadManager;->addHighLevelDownloadTask(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 395
    iput-boolean p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->isDownloading:Z

    .line 396
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->setDownloading(Z)V

    .line 397
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$color;->gcs_ship_media_color_primary_unclickable:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDownload:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 399
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setFooterDisable()V

    return-void
.end method

.method private getImageTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 503
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initAdapter()V
    .locals 4

    .line 144
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 146
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 166
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 167
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 170
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mList:Ljava/util/List;

    iget v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mediaType:I

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/powervision/localhttp/PVW4DownloadManager;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    .line 171
    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->dismissLoading()V

    .line 173
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initDeleteList()V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->tempPathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-static {}, Lcom/powervision/gcs/utils/ProgressDialogUtils;->dismissDialog()V

    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->tempPathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 412
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->tempPathMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-virtual {v2}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 413
    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePathList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deleteModel:Ljava/util/List;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->tempPathMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePath()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->setAdapterListener(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;)V

    .line 240
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDownload:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$4;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$4;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$8rUALWk0WCdAPZBCaUzIZv8oq0o;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$8rUALWk0WCdAPZBCaUzIZv8oq0o;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$5;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$5;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadAdapter()V
    .locals 9

    .line 510
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 511
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 516
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 518
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 519
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    goto :goto_0

    .line 523
    :cond_2
    new-instance v4, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    invoke-direct {v4}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;-><init>()V

    .line 524
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setTime(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    .line 529
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 530
    invoke-static {v4}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->isSaveToAlbumAndFileExit(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x5

    .line 531
    invoke-virtual {v4, v6}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setDownloadStatus(I)V

    .line 535
    :cond_3
    new-instance v6, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;

    invoke-direct {v6}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;-><init>()V

    .line 537
    rem-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_7

    if-eq v7, v5, :cond_6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    goto :goto_2

    .line 548
    :cond_4
    invoke-virtual {v6, v4}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia4(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_2

    .line 545
    :cond_5
    invoke-virtual {v6, v4}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia3(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_2

    .line 542
    :cond_6
    invoke-virtual {v6, v4}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia2(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    goto :goto_2

    .line 539
    :cond_7
    invoke-virtual {v6, v4}, Lcom/powervision/gcs/model/mixmodel/ShipMediaImageMixModel;->setMedia1(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    .line 552
    :goto_2
    iget-object v4, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 560
    :cond_8
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mLayoutLoading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->notifyDataSetChanged()V

    .line 563
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->notifyMediaFileCount()V

    goto :goto_3

    .line 566
    :cond_9
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->finish()V

    :goto_3
    return-void
.end method

.method private onBackPress()V
    .locals 3

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Msg_32:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Msg_33:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    sget v1, Lcom/powervision/gcs/R$string;->AP03_AI_2:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Msg_31:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->newInstanceTips(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    move-result-object v0

    .line 675
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "BottomListFragment"

    invoke-virtual {v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 676
    new-instance v1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$7;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->setListener(Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;)V

    return-void
.end method

.method private setDeleteEnable(Z)V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDelete:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$color;->album_black:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_media_delete_icon_enable:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 350
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDelete:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$color;->gray_text_color:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_media_delete_icon_dis:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 355
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setDownloadEnable(Z)V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDownload:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 367
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDownload:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$color;->album_black:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_media_download_icon_enable:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 369
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 370
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDownload:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDownload:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$color;->gray_text_color:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/powervision/gcs/R$mipmap;->ship_media_download_icon_dis:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->textDownload:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setFooterDisable()V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setDeleteEnable(Z)V

    .line 336
    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setDownloadEnable(Z)V

    return-void
.end method

.method private updateMediaMap(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 2

    .line 490
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getCreattime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getImageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 494
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteMultiFile(Ljava/lang/String;)V
    .locals 5

    .line 577
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 578
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->handler:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 581
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deleteModelTemp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_4

    .line 582
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deleteModelTemp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 583
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->removeFromList(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {v0}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->getThmCachePath(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-static {v2}, Lcom/powervision/gcs/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    invoke-static {v2}, Lcom/powervision/gcs/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 590
    :cond_1
    iget v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mediaType:I

    if-ne v2, v1, :cond_2

    .line 591
    invoke-static {v0}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->getFileLRVCachePath(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-static {v1}, Lcom/powervision/gcs/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 593
    invoke-static {v1}, Lcom/powervision/gcs/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 598
    :cond_2
    invoke-virtual {v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->getCreattime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getImageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 600
    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 601
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 604
    :cond_4
    iget p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mediaType:I

    if-nez p1, :cond_5

    .line 605
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Lcom/powervision/gcs/model/event/ShipImageListChangedEvent;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_6

    .line 607
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mMediaMap:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Lcom/powervision/gcs/model/event/ShipVideoListChangedEvent;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 609
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->deletePath()V

    :goto_2
    return-void
.end method

.method protected getContentView()I
    .locals 1

    .line 117
    sget v0, Lcom/powervision/gcs/R$layout;->activity_ship_media_manager:I

    return v0
.end method

.method protected getIntentData(Landroid/content/Intent;)V
    .locals 3

    .line 473
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseActivity;->getIntentData(Landroid/content/Intent;)V

    const-string v0, "json"

    .line 474
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    .line 475
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mediaType:I

    .line 476
    new-instance p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$6;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$6;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    .line 477
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$6;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 478
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 481
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 482
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 483
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    invoke-direct {p0, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->updateMediaMap(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 5

    .line 123
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextTitle:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v1, Lcom/powervision/gcs/R$string;->MediaLib_9:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 127
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 128
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadAOAUtils;->get()Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils;->get()Lcom/powervision/localhttp/PVW4DownloadHttpUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->addAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 136
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->setFooterDisable()V

    .line 137
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->initAdapter()V

    .line 138
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->initListener()V

    .line 139
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->loadAdapter()V

    .line 140
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/HttpUsbManager;->setHighSpeed()V

    return-void
.end method

.method public synthetic lambda$checkMd5AndRename$2$AOAShipMediaManagerActivity(Ljava/lang/String;Ljava/lang/String;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;I)V
    .locals 1

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/powervision/gcs/utils/ShipHelper;->getFileNameByModel(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 791
    invoke-static {p2, p1}, Lcom/powervision/gcs/utils/FileUtil;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 792
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$LKyvkUHHadyQdjrANhRTpOcifmA;

    invoke-direct {p2, p0, p3, p4}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/-$$Lambda$AOAShipMediaManagerActivity$LKyvkUHHadyQdjrANhRTpOcifmA;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$initListener$0$AOAShipMediaManagerActivity(Landroid/view/View;)V
    .locals 1

    .line 282
    iget-boolean p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->isDownloading:Z

    if-eqz p1, :cond_0

    return-void

    .line 285
    :cond_0
    iget p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mediaFileSelectStatus:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 288
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->cancelSelectAll()V

    goto :goto_1

    .line 286
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->selectAll()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$null$1$AOAShipMediaManagerActivity(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;I)V
    .locals 2

    const/4 v0, 0x5

    .line 793
    invoke-virtual {p1, v0}, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;->setDownloadStatus(I)V

    .line 794
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mAdapter:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;

    const-string v1, "progress"

    invoke-virtual {v0, p2, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 795
    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->saveToAlbum(Landroid/content/Context;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 656
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseActivity;->onDestroy()V

    .line 657
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 658
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->downloadUtils:Lcom/powervision/localhttp/PVW4DownloadManager;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->aoaDownloadListener:Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadManager;->removeAOADownloadListener(Lcom/powervision/localhttp/PVW4DownloadManager$AOADownloadListener;)V

    .line 659
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->handler:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$ShipMediaManagerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 660
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/HttpUsbManager;->setLowSpeed()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->checkDownloadingBeforeFinish()V

    const/4 p1, 0x1

    return p1

    .line 331
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/powervision/gcs/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
