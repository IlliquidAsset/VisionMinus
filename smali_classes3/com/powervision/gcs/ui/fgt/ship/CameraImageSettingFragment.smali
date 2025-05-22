.class public Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;
.super Lcom/powervision/gcs/base/BaseFragment;
.source "CameraImageSettingFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;
.implements Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraImageSettingFragm"


# instance fields
.field private adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;

.field private imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

.field private imageSizeData:Ljava/util/ArrayList;
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

.field private mImageSize:Ljava/lang/String;

.field private mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

.field shipCamaraItemArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfd9
    .end annotation
.end field

.field shipCamaraPicSizeLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfdf
    .end annotation
.end field

.field shipCamaraPicSizeListview:Landroid/widget/ExpandableListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfdd
    .end annotation
.end field

.field shipCamaraShootingmodeLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfde
    .end annotation
.end field

.field shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfe0
    .end annotation
.end field

.field shipCamaraShootingmodeName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfe1
    .end annotation
.end field

.field shipCamaraShootingmodeValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfe2
    .end annotation
.end field

.field private shootingModeData:Ljava/util/ArrayList;
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

.field private shoottingMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/powervision/gcs/base/BaseFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shoottingMode:I

    const-string v0, "CameraImageSettingFragm"

    const-string v1, "processLogic: notifyListeners 1111111"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shoottingMode:I

    return p0
.end method

.method static synthetic access$302(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shoottingMode:I

    return p1
.end method

.method private initImageSizeData()V
    .locals 3

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_13:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "value"

    const-string v2, ""

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "normal"

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$array;->ship_camera_photo_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    .line 134
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 135
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeListview:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$2;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment$3;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    return-void
.end method

.method private initShootingData()V
    .locals 9

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_14:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "value"

    const-string v3, ""

    .line 108
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "type"

    const-string v5, "normal"

    .line 109
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "items"

    const/4 v7, 0x0

    .line 110
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v7, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    iget-object v7, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mContext:Landroid/content/Context;

    sget v8, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_17:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$array;->ship_camera_shooting_times:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;

    .line 120
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMultiPictureRatio(Lcom/powervision/localhttp/entity/PVW4MultiPictureRatio;)V
    .locals 6

    .line 760
    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4MultiPictureRatio;->multi_photo_burst_resolution:Ljava/lang/String;

    .line 762
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x715

    const-string v2, "12M"

    const-string v3, "8M"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0xbe4c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "value"

    const-string v1, "items"

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    goto :goto_2

    .line 770
    :cond_3
    iput-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mImageSize:Ljava/lang/String;

    .line 771
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v4

    .line 772
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 764
    :cond_4
    iput-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mImageSize:Ljava/lang/String;

    .line 765
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v5

    .line 766
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method public handleMultiPictureSpeed(Lcom/powervision/localhttp/entity/PVW4MultiPictureSpeed;)V
    .locals 5

    .line 737
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->ship_camera_shooting_times:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4MultiPictureSpeed;->multi_photo_burst_type:Ljava/lang/String;

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMultiPictureSpeed notifyListeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraImageSettingFragm"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xc954

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0xd0d6

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "5P1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "3P1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v1, "value"

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    goto :goto_2

    .line 749
    :cond_3
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    aget-object v2, v0, v4

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;->notifyDataSetChanged()V

    .line 752
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeValue:Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 743
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    aget-object v2, v0, v3

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;->notifyDataSetChanged()V

    .line 746
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeValue:Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public handleMultiPictureSpeed3P()V
    .locals 5

    .line 715
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->ship_camera_shooting_times:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 716
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    const-string v4, "value"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "10"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;

    invoke-virtual {v1}, Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;->notifyDataSetChanged()V

    const/4 v1, 0x2

    .line 719
    iput v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shoottingMode:I

    .line 721
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeValue:Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public handleMultiPictureSpeed5P()V
    .locals 5

    .line 726
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$array;->ship_camera_shooting_times:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    aget-object v3, v0, v2

    const-string v4, "value"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "10"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;

    invoke-virtual {v1}, Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;->notifyDataSetChanged()V

    const/4 v1, 0x3

    .line 730
    iput v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shoottingMode:I

    .line 732
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeValue:Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public handleMultiSpeed(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->handleMultiPictureSpeed3P()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->handleMultiPictureSpeed5P()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handlePictureRatio(I)V
    .locals 6

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePictureRatio: notifyListeners "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraImageSettingFragm"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "12M"

    const-string v2, "8M"

    const-string v3, "value"

    const-string v4, "items"

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 648
    :pswitch_1
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mImageSize:Ljava/lang/String;

    .line 649
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v0

    .line 650
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 642
    :pswitch_2
    iput-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mImageSize:Ljava/lang/String;

    .line 643
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v5

    .line 644
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 636
    :pswitch_3
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mImageSize:Ljava/lang/String;

    .line 637
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v0

    .line 638
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 630
    :pswitch_4
    iput-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mImageSize:Ljava/lang/String;

    .line 631
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v5

    .line 632
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleShootingMode(Lcom/powervision/localhttp/entity/PVW4GetWorkMode;)V
    .locals 3

    .line 673
    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4GetWorkMode;->workmode:Ljava/lang/String;

    const-string v0, "10"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "value"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 674
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 677
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "20"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;->notifyDataSetChanged()V

    .line 679
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_14:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public handleSinglePictureMode()V
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shootingModeData:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->adapter:Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;

    invoke-virtual {v0}, Lcom/powervision/gcs/adapter/ship/ShipCameraImageSettingAdapter;->notifyDataSetChanged()V

    .line 709
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_CameraSetting_14:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public handleSinglePictureRatio(Lcom/powervision/localhttp/entity/PVW4SinglePictureRatio;)V
    .locals 6

    .line 685
    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4SinglePictureRatio;->normal_photo_resolution:Ljava/lang/String;

    .line 686
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x715

    const-string v2, "12M"

    const-string v3, "8M"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0xbe4c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "value"

    const-string v1, "items"

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    goto :goto_2

    .line 694
    :cond_3
    iput-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mImageSize:Ljava/lang/String;

    .line 695
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v4

    .line 696
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 688
    :cond_4
    iput-object v3, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mImageSize:Ljava/lang/String;

    .line 689
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v5

    .line 690
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeData:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->imageSizeAdapter:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;

    invoke-virtual {p1}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    sget p1, Lcom/powervision/gcs/R$layout;->gcs_ship_camera_setting_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->setContentView(I)V

    .line 75
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraItemArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onGroupExpand(I)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraItemArrow:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method protected processLogic(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "CameraImageSettingFragm"

    const-string v0, "processLogic: notifyListeners 1111111"

    .line 80
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->initShootingData()V

    .line 82
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->initImageSizeData()V

    .line 85
    invoke-direct {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->initListener()V

    .line 87
    invoke-static {p0}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask;->create(Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$View;)Lcom/powervision/gcs/ui/fgt/ship/presenter/CameraImageSettingPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    .line 88
    invoke-virtual {p0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 89
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    invoke-interface {p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;->getShootingMode()V

    .line 91
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

.method public ship_camara_shootingmode_layout()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xfde
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraItemArrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraItemArrow:Landroid/widget/ImageView;

    sget v2, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeListview:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

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

    .line 95
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->mPresenter:Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/CameraImageSettingTask$Presenter;->updateWorkMode(Lcom/powervision/localhttp/entity/BaseModel;)V

    return-void
.end method
