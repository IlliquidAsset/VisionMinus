.class public Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "CameraRecordingSettingFragment.java"

# interfaces
.implements Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetMuxerFormatListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;
.implements Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;


# static fields
.field private static final Tag:Ljava/lang/String; = "CameraSettingFgm"

.field static isAircraft:Z = false


# instance fields
.field private currentMode:Ljava/lang/String;

.field private currentValue:I

.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraRecordingAdapter:Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field sdkInstance:Lcom/powervision/natives/PowerCamSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->currentMode:Ljava/lang/String;

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->currentValue:I

    return-void
.end method

.method private analysisParamer(I)V
    .locals 3

    .line 364
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isInNormalFollow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "avoid_follow_open"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Z)Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;
    .locals 0

    .line 53
    sput-boolean p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->isAircraft:Z

    .line 54
    new-instance p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

    invoke-direct {p0}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;-><init>()V

    return-object p0
.end method

.method private getSubItemIndex(I)I
    .locals 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method private getVideoSizeSettingDatas(Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;Z)V
    .locals 22

    move-object/from16 v0, p1

    .line 150
    new-instance v7, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;

    const-string v2, "4K"

    const-string v3, "3840*2160"

    const/4 v4, 0x0

    const-string v5, "4K"

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 152
    new-instance v1, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

    const/16 v9, 0x18

    const/16 v10, 0x19

    const/16 v11, 0x1e

    const/16 v12, 0x30

    const/16 v13, 0x32

    const/16 v14, 0x3c

    const/4 v15, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;-><init>(IIIIIII)V

    .line 154
    invoke-virtual {v7, v1}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->addSubItem(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v0, v7}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->addSubItem(Ljava/lang/Object;)V

    .line 158
    new-instance v1, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;

    const-string v17, "2.7K"

    const-string v18, "2704x1520"

    const/16 v19, 0x0

    const-string v20, "2.7K"

    const/16 v21, 0x5

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 160
    new-instance v10, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

    const/16 v3, 0x18

    const/16 v4, 0x19

    const/16 v5, 0x1e

    const/16 v6, 0x30

    const/16 v7, 0x32

    const/16 v8, 0x3c

    const/4 v9, 0x5

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;-><init>(IIIIIII)V

    .line 162
    invoke-virtual {v1, v10}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->addSubItem(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->addSubItem(Ljava/lang/Object;)V

    .line 165
    new-instance v1, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;

    const-string v12, "FHD"

    const-string v13, "1920*1080"

    const/4 v14, 0x0

    const-string v15, "FHD"

    const/16 v16, 0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 167
    new-instance v10, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

    const/4 v9, 0x1

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;-><init>(IIIIIII)V

    .line 169
    invoke-virtual {v1, v10}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->addSubItem(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->addSubItem(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    if-eqz p2, :cond_1

    .line 173
    iget-object v2, v1, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->currentMode:Ljava/lang/String;

    const-string v3, "FOLLOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v2, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;

    .line 177
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lewis/camera/R$string;->AP03_CameraSetting_34:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x2

    const-string v5, "1920*1080"

    const-string v7, "FHD"

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 178
    new-instance v3, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

    const/16 v10, 0x78

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x2

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;-><init>(IIIIIII)V

    .line 180
    invoke-virtual {v2, v3}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->addSubItem(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0, v2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->addSubItem(Ljava/lang/Object;)V

    .line 183
    new-instance v2, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;

    const/4 v7, 0x0

    const/4 v9, 0x3

    const-string v5, "HD"

    const-string v6, "1280*720"

    const-string v8, "HD"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 185
    new-instance v3, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

    const/16 v11, 0x18

    const/16 v12, 0x19

    const/16 v13, 0x1e

    const/16 v14, 0x30

    const/16 v15, 0x32

    const/16 v16, 0x3c

    const/16 v17, 0x3

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;-><init>(IIIIIII)V

    .line 187
    invoke-virtual {v2, v3}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->addSubItem(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v0, v2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->addSubItem(Ljava/lang/Object;)V

    .line 190
    new-instance v2, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;

    .line 191
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lewis/camera/R$string;->AP03_CameraSetting_35:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x4

    const-string v6, "1280*720"

    const-string v8, "HD"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 192
    new-instance v3, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

    const/16 v11, 0x78

    const/16 v12, 0xf0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x4

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;-><init>(IIIIIII)V

    .line 194
    invoke-virtual {v2, v3}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->addSubItem(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v0, v2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->addSubItem(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCameraRecordingListData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->data:Ljava/util/List;

    .line 203
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v0

    .line 204
    invoke-static {v0}, Lcom/powervision/camera/utils/CameraUtil;->getCameraResolutionStr(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v0}, Lcom/powervision/camera/utils/CameraUtil;->getCameraResolutionFps(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v2, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;

    sget v3, Lcom/lewis/camera/R$string;->AP03_CameraSetting_33:I

    invoke-virtual {p0, v3}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    sget-boolean v0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->isAircraft:Z

    invoke-direct {p0, v2, v0}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->getVideoSizeSettingDatas(Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;Z)V

    .line 210
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;

    .line 214
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_36:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MOV"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    new-instance v1, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;

    const-string v3, "MP4"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->addSubItem(Ljava/lang/Object;)V

    .line 216
    new-instance v1, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;

    invoke-direct {v1, v2, v4, v4}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->addSubItem(Ljava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->data:Ljava/util/List;

    return-object v0
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 65
    sget v0, Lcom/lewis/camera/R$layout;->aircraft_camera_recording_setting_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->getCameraRecordingListData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mDataList:Ljava/util/List;

    .line 77
    new-instance v1, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

    invoke-direct {v1, v0}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mCameraRecordingAdapter:Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

    .line 78
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getMuxerFormatType()V

    .line 80
    sget-boolean v0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->isAircraft:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const-string v1, "MPC_AVOI_ON"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    sget p1, Lcom/lewis/camera/R$id;->camera_recording_setting_list:I

    invoke-virtual {p0, p1}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public synthetic lambda$onGetMuxerFormat$4$CameraRecordingSettingFragment()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mCameraRecordingAdapter:Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onSetMuxerFormat$5$CameraRecordingSettingFragment()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mCameraRecordingAdapter:Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onVideoResolutionChange$3$CameraRecordingSettingFragment()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mCameraRecordingAdapter:Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setListener$0$CameraRecordingSettingFragment(Ljava/lang/Boolean;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mCameraRecordingAdapter:Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1, v0}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->setFollowOpen(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setListener$1$CameraRecordingSettingFragment(Ljava/lang/String;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mCameraRecordingAdapter:Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setListener$2$CameraRecordingSettingFragment(Ljava/lang/String;)V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListener: currentMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->currentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->currentMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->currentMode:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->getCameraRecordingListData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mDataList:Ljava/util/List;

    .line 113
    new-instance v1, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

    invoke-direct {v1, v0}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mCameraRecordingAdapter:Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

    .line 114
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    iget v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->currentValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->currentMode:Ljava/lang/String;

    const-string v0, "TRIPLE"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->mCameraRecordingAdapter:Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;

    if-eqz p1, :cond_0

    .line 121
    iget v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->currentValue:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->setManualOpenAndModeE(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 356
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V

    .line 357
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnSetMuxerFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetMuxerFormatListener;)V

    .line 358
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraNotifyOnGetMuxerFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;)V

    .line 359
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 360
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onGetMuxerFormat(Ljava/lang/String;)V
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======get====onGetMuxerFormat=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mov_set"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 330
    new-instance v0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$LliwLO2SL3URYRlbROKUaIrQ4P4;

    invoke-direct {v0, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$LliwLO2SL3URYRlbROKUaIrQ4P4;-><init>(Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPhotoResolutionChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetGetFloatParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public onSetGetIntParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "DOWNLOAD"

    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SUCCESS"

    .line 378
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MPC_AVOI_ON"

    .line 379
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 380
    iput p4, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->currentValue:I

    .line 381
    invoke-direct {p0, p4}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->analysisParamer(I)V

    :cond_0
    return-void
.end method

.method public onSetGetLongParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onSetMuxerFormat(Ljava/lang/String;)V
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======set==onSetMuxerFormat===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mov_set"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 345
    new-instance v0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$i4lP6qsTOcJIMM37qj9tiMOrHyo;

    invoke-direct {v0, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$i4lP6qsTOcJIMM37qj9tiMOrHyo;-><init>(Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onVideoResolutionChange(Ljava/lang/String;)V
    .locals 1

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    new-instance v0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$4dXqPUJpGc9H5Fes-3ZpPyyqaRg;

    invoke-direct {v0, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$4dXqPUJpGc9H5Fes-3ZpPyyqaRg;-><init>(Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    :cond_0
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 311
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    .line 312
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 313
    :cond_1
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/camera/camera/CameraManager;->setCameraAudioState(I)V

    .line 314
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getAllParameters()V

    :cond_2
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 89
    invoke-static {}, Lcom/powervision/natives/PowerCamSDK;->getInstance()Lcom/powervision/natives/PowerCamSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->sdkInstance:Lcom/powervision/natives/PowerCamSDK;

    .line 90
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraResolutionChangeListener(Lcom/powervision/camera/camera/CameraListener$CameraResolutionChangeListener;)V

    .line 91
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnSetMuxerFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnSetMuxerFormatListener;)V

    .line 92
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraNotifyOnGetMuxerFormatListener(Lcom/powervision/camera/camera/CameraListener$CameraNotifyOnGetMuxerFormatListener;)V

    .line 93
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 94
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "avoid_follow_open"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$pxEojQ1ydc6b9jDrGaEMjj17q68;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$pxEojQ1ydc6b9jDrGaEMjj17q68;-><init>(Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 102
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "avoid_follow_open_check_resolution"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$xm1jRop4cG86cCqZtB7Izkegplc;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$xm1jRop4cG86cCqZtB7Izkegplc;-><init>(Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 108
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "air_main_mode"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$O60HcPk2oN11PtHL7XHPtN5iSKk;

    invoke-direct {v1, p0}, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$O60HcPk2oN11PtHL7XHPtN5iSKk;-><init>(Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
