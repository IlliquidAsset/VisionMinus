.class public Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "CameraCommonSettingFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraCommonSettingFrag"


# instance fields
.field private adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraCommonSettingAdapter;

.field private commonData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

.field shipCamaraStyleListview:Landroid/widget/ExpandableListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfd8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    .line 249
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->formatSdcard()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->cameraReset()V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->clearSDCardCache()V

    return-void
.end method

.method private cameraReset()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->resetCamera()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addOnceMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private clearSDCardCache()V
    .locals 2

    .line 299
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraCommonSettingFragment$AWYjY7-6MMkl-C08sC2T4atcVgg;->INSTANCE:Lcom/powervision/gcs/ui/fgt/ship/-$$Lambda$CameraCommonSettingFragment$AWYjY7-6MMkl-C08sC2T4atcVgg;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 305
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private formatSdcard()V
    .locals 2

    .line 196
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object v0

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->formatSdCard()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method private initData()V
    .locals 10

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->commonData:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_33:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "value"

    const-string v3, ""

    .line 235
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "type"

    const-string v5, "normal"

    .line 236
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "items"

    const/4 v7, 0x0

    .line 237
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v8, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->commonData:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    iget-object v8, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->mContext:Landroid/content/Context;

    sget v9, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_34:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->commonData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    new-instance v0, Lcom/powervision/gcs/adapter/ship/ShipCameraCommonSettingAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->commonData:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/adapter/ship/ShipCameraCommonSettingAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraCommonSettingAdapter;

    return-void
.end method

.method static synthetic lambda$clearSDCardCache$0()V
    .locals 2

    .line 300
    invoke-static {}, Lcom/powervision/gcs/utils/FileUtil;->getShipCachePath()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {v1}, Lcom/powervision/gcs/utils/FileUtil;->deleteDir(Ljava/io/File;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_camera_common_setting_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->initData()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 127
    invoke-super {p0}, Lcom/powervision/gcs/base/BaseFragment;->onDestroyView()V

    .line 128
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    .line 64
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->pvw4RequestSimpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 66
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->shipCamaraStyleListview:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraCommonSettingAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 67
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->shipCamaraStyleListview:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 112
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->shipCamaraStyleListview:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    return-void
.end method
