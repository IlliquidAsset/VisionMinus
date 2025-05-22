.class public Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ShipSelfCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;,
        Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$EmptyViewHolder;,
        Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$FishFinderHolder;,
        Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;,
        Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;,
        Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;,
        Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$OnCheckListener;
    }
.end annotation


# static fields
.field public static final MODE_BRITISH:I = 0x1

.field public static final MODE_METRIC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShipSelfCheckAdapter"


# instance fields
.field private final CONTROL_MODE_TYPE:I

.field private final EMPTY_VIEW_TYPE:I

.field private final FISH_FINDER_RECOG:I

.field private final MODE_UNIT:I

.field private final MUTIPLY_SENSERS:I

.field private final checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

.field child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field group_head:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryCapacity:I

.field private mContext:Landroid/content/Context;

.field private mTemperature:I

.field onCheckListener:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$OnCheckListener;

.field private remoteBattery:I

.field private remoteMode:Ljava/lang/String;

.field private sdCardRemain:Ljava/lang/String;

.field private statuDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->MUTIPLY_SENSERS:I

    const/4 v1, 0x1

    .line 35
    iput v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->FISH_FINDER_RECOG:I

    const/4 v1, 0x2

    .line 36
    iput v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->CONTROL_MODE_TYPE:I

    const/4 v1, 0x3

    .line 37
    iput v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->EMPTY_VIEW_TYPE:I

    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mBatteryCapacity:I

    .line 40
    iput v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mTemperature:I

    .line 48
    iput v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->MODE_UNIT:I

    .line 59
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->group_head:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->child:Ljava/util/List;

    .line 61
    new-instance p1, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    invoke-direct {p1}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;-><init>()V

    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    return-void
.end method

.method static synthetic access$500(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getCheckStatus()Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->child:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->child:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildType(II)I
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x3

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_2

    :cond_2
    return v1
.end method

.method public getChildTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const-string p3, "lzqCheckView"

    const-string v0, "getChildView"

    .line 332
    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object p3, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    if-nez p3, :cond_0

    .line 334
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    .line 336
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->getChildType(II)I

    move-result p1

    const/4 p2, 0x3

    const/4 p3, 0x1

    const/4 p5, 0x2

    const/4 v0, 0x0

    if-nez p4, :cond_a

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eq p1, p3, :cond_3

    if-eq p1, p5, :cond_2

    if-eq p1, p2, :cond_1

    goto/16 :goto_5

    .line 419
    :cond_1
    new-instance p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$EmptyViewHolder;

    invoke-direct {p2, v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$EmptyViewHolder;-><init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$1;)V

    .line 420
    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/powervision/gcs/R$layout;->empty_view_layout:I

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 421
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p4, p2

    goto/16 :goto_5

    .line 390
    :cond_2
    new-instance p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    invoke-direct {p2, v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;-><init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$1;)V

    .line 391
    iget-object p3, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/powervision/gcs/R$layout;->gcs_ship_common_setting_remote_rock_child_item:I

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 392
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 394
    sget p4, Lcom/powervision/gcs/R$id;->ship_remote_rock_mode1_btn:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode1Btn:Landroid/widget/TextView;

    .line 395
    sget p4, Lcom/powervision/gcs/R$id;->ship_remote_rock_mode1_line:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode1Line:Landroid/view/View;

    .line 396
    sget p4, Lcom/powervision/gcs/R$id;->ship_remote_rock_mode2_btn:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode2Btn:Landroid/widget/TextView;

    .line 397
    sget p4, Lcom/powervision/gcs/R$id;->ship_remote_rock_mode2_line:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode2Line:Landroid/view/View;

    .line 398
    sget p4, Lcom/powervision/gcs/R$id;->ship_remote_rock_mode3_btn:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode3Btn:Landroid/widget/TextView;

    .line 399
    sget p4, Lcom/powervision/gcs/R$id;->ship_remote_rock_mode3_line:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode3Line:Landroid/view/View;

    .line 400
    sget p4, Lcom/powervision/gcs/R$id;->ship_remote_rock_mode4_btn:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode4Btn:Landroid/widget/TextView;

    .line 401
    sget p4, Lcom/powervision/gcs/R$id;->ship_remote_rock_mode4_line:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode4Line:Landroid/view/View;

    .line 402
    sget p4, Lcom/powervision/gcs/R$id;->ship_reomte_rock_mode1_detail:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout;

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode1Detail:Landroid/widget/RelativeLayout;

    .line 403
    sget p4, Lcom/powervision/gcs/R$id;->ship_reomte_rock_mode2_detail:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout;

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode2Detail:Landroid/widget/RelativeLayout;

    .line 404
    sget p4, Lcom/powervision/gcs/R$id;->ship_reomte_rock_mode3_detail:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout;

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode3Detail:Landroid/widget/RelativeLayout;

    .line 405
    sget p4, Lcom/powervision/gcs/R$id;->ship_reomte_rock_mode4_detail:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout;

    iput-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode4Detail:Landroid/widget/RelativeLayout;

    .line 408
    iget-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode1Line:Landroid/view/View;

    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode2Line:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode3Line:Landroid/view/View;

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode4Line:Landroid/view/View;

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode1Line:Landroid/view/View;

    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$color;->color_camera_set:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 413
    iget-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode1Detail:Landroid/widget/RelativeLayout;

    invoke-virtual {p4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 414
    iget-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode2Detail:Landroid/widget/RelativeLayout;

    invoke-virtual {p4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 415
    iget-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode3Detail:Landroid/widget/RelativeLayout;

    invoke-virtual {p4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 416
    iget-object p4, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode4Detail:Landroid/widget/RelativeLayout;

    invoke-virtual {p4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object v0, p2

    goto :goto_0

    .line 384
    :cond_3
    new-instance p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$FishFinderHolder;

    invoke-direct {p2, v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$FishFinderHolder;-><init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$1;)V

    .line 385
    iget-object p3, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/powervision/gcs/R$layout;->ship_self_check_fish_finder:I

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 386
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object p4, p3

    goto/16 :goto_5

    .line 344
    :cond_4
    new-instance p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;

    invoke-direct {p2, v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;-><init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$1;)V

    .line 345
    iget-object p4, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v2, Lcom/powervision/gcs/R$layout;->ship_self_check_mutiply_sensors:I

    invoke-virtual {p4, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 346
    sget v2, Lcom/powervision/gcs/R$id;->tv_check_self_imu:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvImu:Landroid/widget/TextView;

    .line 347
    sget v2, Lcom/powervision/gcs/R$id;->tv_check_self_magnet:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvMaget:Landroid/widget/TextView;

    .line 348
    sget v2, Lcom/powervision/gcs/R$id;->ship_self_gps:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvGps:Landroid/widget/TextView;

    .line 349
    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    const/4 v3, -0x1

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_3

    .line 357
    :cond_5
    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    const/high16 v4, -0x10000

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p5, :cond_6

    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    .line 358
    iget-object v1, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvMaget:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/powervision/gcs/R$string;->PVW4_Check_17:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v1, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvMaget:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 361
    :cond_6
    iget-object v1, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvMaget:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/powervision/gcs/R$string;->PVW4_Check_18:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvMaget:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    :goto_1
    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p5, :cond_7

    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_7

    .line 365
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvImu:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Check_17:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvImu:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 368
    :cond_7
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvImu:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Check_18:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvImu:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    :goto_2
    iget-object p3, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p5, :cond_8

    iget-object p3, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_8

    .line 372
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvGps:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Check_17:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvGps:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 375
    :cond_8
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvGps:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Check_18:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvGps:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 350
    :cond_9
    :goto_3
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvImu:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->battery_display:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 351
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvImu:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvMaget:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->battery_display:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 353
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvMaget:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvGps:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->battery_display:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 355
    iget-object p3, p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;->mTvGps:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    :goto_4
    invoke-virtual {p4, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    if-eqz p1, :cond_e

    if-eq p1, p3, :cond_d

    if-eq p1, p5, :cond_c

    if-eq p1, p2, :cond_b

    goto :goto_5

    .line 433
    :cond_b
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    goto :goto_5

    .line 436
    :cond_c
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    goto :goto_5

    .line 430
    :cond_d
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$FishFinderHolder;

    goto :goto_5

    .line 427
    :cond_e
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;

    :goto_5
    if-eq p1, p5, :cond_f

    goto :goto_6

    .line 444
    :cond_f
    iget-object p1, v0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode1Btn:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$1;-><init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object p1, v0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode2Btn:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$2;

    invoke-direct {p2, p0, v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$2;-><init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object p1, v0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode3Btn:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$3;

    invoke-direct {p2, p0, v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$3;-><init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object p1, v0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode4Btn:Landroid/widget/TextView;

    new-instance p2, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;

    invoke-direct {p2, p0, v0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;-><init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->group_head:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->group_head:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGroupView  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   hight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqCheckView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    :cond_0
    if-nez p3, :cond_1

    .line 148
    new-instance p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;-><init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$1;)V

    .line 149
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->ship_self_check_item:I

    invoke-virtual {v0, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 150
    sget v0, Lcom/powervision/gcs/R$id;->tv_check_self_desc:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    .line 151
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_item_name:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupName:Landroid/widget/TextView;

    .line 152
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_item_arrow:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    .line 153
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;

    move-object v7, p4

    move-object p4, p3

    move-object p3, v7

    .line 158
    :goto_0
    iget-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x14

    const-string v1, "%"

    const/4 v2, 0x0

    const/high16 v3, -0x10000

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    .line 309
    :pswitch_0
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupName:Landroid/widget/TextView;

    sget p2, Lcom/powervision/gcs/R$string;->PVW4_StatusBar_5:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    sget p2, Lcom/powervision/gcs/R$string;->battery_display:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 312
    iget p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->remoteBattery:I

    if-lez p1, :cond_2

    .line 313
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->remoteBattery:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_2
    iget p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->remoteBattery:I

    if-gt p1, v0, :cond_3

    if-lez p1, :cond_3

    .line 317
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_9

    .line 319
    :cond_3
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_9

    .line 299
    :pswitch_1
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_14:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    sget p2, Lcom/powervision/gcs/R$string;->battery_display:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->remoteMode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 304
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->remoteMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 279
    :pswitch_2
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object p1

    iget-boolean p1, p1, Lcom/powervision/base/base/BaseApplication;->isShowSonar:Z

    if-nez p1, :cond_4

    .line 280
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_7:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 281
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->setFindFishDiscern(I)V

    .line 283
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 285
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->setFindFishDiscern(I)V

    .line 286
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_17:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    :goto_1
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_5

    .line 292
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 294
    :cond_5
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    :goto_2
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/gcs/R$string;->PVW4_Check_13:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 259
    :pswitch_3
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_12:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    sget p2, Lcom/powervision/gcs/R$string;->battery_display:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->sdCardRemain:Ljava/lang/String;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_18:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 266
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->setCammeraSDCardCapacity(I)V

    .line 267
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 269
    :cond_6
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->setCammeraSDCardCapacity(I)V

    .line 270
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    :goto_3
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->sdCardRemain:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 274
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->sdCardRemain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 222
    :pswitch_4
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_11:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    sget p2, Lcom/powervision/gcs/R$string;->battery_display:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mTemperature:I

    if-gez p1, :cond_7

    goto/16 :goto_9

    :cond_7
    const/16 p2, 0x48

    if-lt p1, p2, :cond_8

    .line 232
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 234
    :cond_8
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    :goto_4
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->setShipBatteryTemperature(I)V

    .line 238
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/utils/SPHelperUtils;->getUnitMode()I

    move-result p1

    if-nez p1, :cond_9

    .line 239
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mTemperature:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\u2103"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 241
    :cond_9
    iget p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mTemperature:I

    int-to-double p1, p1

    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/UnitConversionUtils;->celsiusToFahrenheit(D)D

    move-result-wide p1

    .line 242
    invoke-static {p1, p2}, Lcom/powervision/gcs/utils/FormatUtils;->getLastOneNum(D)Ljava/lang/String;

    move-result-object p1

    .line 244
    iget-object p2, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2109"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 187
    :pswitch_5
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Check_10:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getGroupView: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mBatteryCapacity:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShipSelfCheckAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    sget p2, Lcom/powervision/gcs/R$string;->battery_display:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mBatteryCapacity:I

    if-gtz p1, :cond_a

    .line 205
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->setShipBatteryTemperature(I)V

    goto :goto_5

    .line 208
    :cond_a
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->setShipBatteryTemperature(I)V

    .line 210
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mBatteryCapacity:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_5
    iget p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mBatteryCapacity:I

    if-gt p1, v0, :cond_b

    if-lez p1, :cond_b

    .line 214
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_9

    .line 216
    :cond_b
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_9

    .line 162
    :pswitch_6
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Check_8:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v5, :cond_e

    .line 164
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v6, :cond_d

    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v6, :cond_d

    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_c

    goto :goto_6

    .line 169
    :cond_c
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Check_17:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->setSensors(I)V

    goto :goto_7

    .line 165
    :cond_d
    :goto_6
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Check_18:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->groupValue:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->checkStatus:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SlefCheckModel;->setSensors(I)V

    .line 174
    :cond_e
    :goto_7
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_f

    .line 177
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 179
    :cond_f
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :goto_8
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->onCheckListener:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$OnCheckListener;

    if-eqz p1, :cond_10

    .line 182
    invoke-interface {p1}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$OnCheckListener;->onCheck()V

    :cond_10
    :goto_9
    return-object p4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setAdapter(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->statuDatas:Ljava/util/List;

    .line 519
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setBatteryData(II)V
    .locals 0

    .line 523
    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mBatteryCapacity:I

    .line 524
    iput p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->mTemperature:I

    .line 525
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnCheckListener(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$OnCheckListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->onCheckListener:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$OnCheckListener;

    return-void
.end method

.method public setRemoteBatteryData(I)V
    .locals 0

    .line 534
    iput p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->remoteBattery:I

    .line 535
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setRemoteMode(Ljava/lang/String;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->remoteMode:Ljava/lang/String;

    .line 530
    invoke-virtual {p0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSdCardRemain(Ljava/lang/String;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->sdCardRemain:Ljava/lang/String;

    return-void
.end method
