.class public Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "CameraVideoSettingFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraVideoSettingFragm"

.field private static final VIDEO_MODE_NORMAL:I = 0x0

.field private static final VIDEO_MODE_SLOW:I = 0x1


# instance fields
.field private adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

.field private mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;

.field shipCamaraVideoModeItemArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfe3
    .end annotation
.end field

.field shipCamaraVideoModeLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfe4
    .end annotation
.end field

.field shipCamaraVideoModeListview:Landroid/widget/ExpandableListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfe5
    .end annotation
.end field

.field shipCamaraVideoModeName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfe6
    .end annotation
.end field

.field shipCamaraVideoModeValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfe7
    .end annotation
.end field

.field private videoData:Ljava/util/ArrayList;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;)Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    return-object p0
.end method

.method private initVideoData()V
    .locals 9

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_24:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "value"

    const-string v3, ""

    .line 93
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "type"

    const-string v5, "normal"

    .line 94
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v6, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/powervision/gcs/R$array;->ship_camera_video_resolution_normal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "items"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v6, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    iget-object v6, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->mContext:Landroid/content/Context;

    sget v8, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_25:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$array;->ship_camera_video_resolution_slow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    new-instance v0, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    return-void
.end method

.method private setValueText(III)V
    .locals 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_22:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_23:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "720P@240"

    const/4 v1, 0x2

    const-string v2, "720P@120"

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-ne p3, v3, :cond_3

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-ne p3, v1, :cond_8

    const-string p1, "1080pP@60"

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    if-ne p3, v3, :cond_6

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-ne p3, v1, :cond_7

    const-string p1, "1080P@60"

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/4 p1, 0x3

    if-ne p3, p1, :cond_8

    const-string p1, "4k@30"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setVideoNormalResolution(II)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;->quickSetVideoModeSlow(I)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;

    invoke-interface {p1, p2}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;->quickSetVideoModeNormal(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_camera_video_setting_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setContentView(I)V

    .line 62
    invoke-static {p0}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask;->create(Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$View;)Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraVideoSettingPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;

    .line 63
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 65
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeItemArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    const-string p1, ""

    const-string p2, "items"

    const-string p5, "value"

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 130
    invoke-direct {p0, p3, p4}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setVideoNormalResolution(II)V

    .line 131
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    aget-object p2, p2, p4

    .line 132
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-direct {p0, p6, p3, p4}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setValueText(III)V

    .line 135
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    if-ne p3, v0, :cond_1

    .line 138
    invoke-direct {p0, p3, p4}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setVideoNormalResolution(II)V

    .line 139
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    aget-object p2, p2, p4

    .line 140
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-direct {p0, v0, p3, p4}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setValueText(III)V

    .line 143
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return p6
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Lcom/powervision/gcs/base/BaseFragment;->onHiddenChanged(Z)V

    .line 258
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;->getShootingMode()V

    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->initVideoData()V

    .line 71
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeListview:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 72
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeListview:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeListview:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 84
    invoke-static {}, Lcom/powervision/localhttp/MessageDispatchUtils;->get()Lcom/powervision/localhttp/MessageDispatchUtils;

    move-result-object p1

    invoke-static {}, Lcom/powervision/localhttp/CmdModel$Builder;->get()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/CmdModel$Builder;->getAllParameter()Lcom/powervision/localhttp/CmdModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/localhttp/CmdModel$Builder;->build()Lcom/powervision/localhttp/CmdModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/MessageDispatchUtils;->addNewMessage(Lcom/powervision/localhttp/CmdModel;)V

    return-void
.end method

.method public ship_camara_video_mode_layout()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xfe4
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeListview:Landroid/widget/ExpandableListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeItemArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeListview:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeItemArrow:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public updateAllParameterValue(Lcom/powervision/localhttp/entity/BaseModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4AllParams;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraVideoSettingTask$Presenter;->updateWorkMode(Lcom/powervision/localhttp/entity/BaseModel;)V

    return-void
.end method

.method public updateVideoNormalResolution(Ljava/lang/String;)V
    .locals 7

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "1440P30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "1080P60"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "4K2K30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "720P240"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "720P120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "value"

    const-string v6, "items"

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v1, :cond_1

    goto/16 :goto_2

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v4

    .line 290
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-direct {p0, v5, v5, v4}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setValueText(III)V

    .line 292
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v4

    .line 284
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-direct {p0, v5, v5, v4}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setValueText(III)V

    .line 286
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 277
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v2

    .line 278
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-direct {p0, v5, v5, v2}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setValueText(III)V

    .line 280
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 271
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v3

    .line 272
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0, v5, v5, v3}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setValueText(III)V

    .line 274
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 265
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v5

    .line 266
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-direct {p0, v5, v5, v5}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setValueText(III)V

    .line 268
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a6d71ec -> :sswitch_4
        -0x4a6d6ded -> :sswitch_3
        0x5cf4bd8d -> :sswitch_2
        0x75261e53 -> :sswitch_1
        0x7bc1226e -> :sswitch_0
    .end sparse-switch
.end method

.method public updateVideoSlowResolution(Ljava/lang/String;)V
    .locals 5

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4a6d71ec

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x4a6d6ded

    if-eq v0, v1, :cond_1

    const v1, 0x75261e53

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "1080P60"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "720P240"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "720P120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "value"

    const-string v1, "items"

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    goto :goto_2

    .line 313
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v3

    .line 314
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-direct {p0, v4, v4, v3}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setValueText(III)V

    .line 316
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 307
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v4

    .line 308
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-direct {p0, v4, v4, v4}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setValueText(III)V

    .line 310
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 301
    :cond_6
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v2

    .line 302
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->videoData:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-direct {p0, v4, v4, v2}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->setValueText(III)V

    .line 304
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraVideoSettingAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method
