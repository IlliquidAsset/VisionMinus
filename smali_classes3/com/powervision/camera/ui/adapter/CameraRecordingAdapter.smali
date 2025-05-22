.class public Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "CameraRecordingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final LEVEL_ATOM_TYPE_1:I = 0x15

.field public static final LEVEL_ATOM_TYPE_2:I = 0x16

.field public static final LEVEL_ATOM_TYPE_3:I = 0x17

.field public static final LEVEL_CHILD_TYPE_1:I = 0xb

.field public static final LEVEL_CHILD_TYPE_2:I = 0xc

.field public static final LEVEL_CHILD_TYPE_3:I = 0xd

.field public static final LEVEL_CHILD_TYPE_4:I = 0xe

.field public static final LEVEL_GROUP_TYPE_1:I = 0x1


# instance fields
.field private Tag:Ljava/lang/String;

.field private isFollowOpen:Z

.field private isManualOpenAndModeE:Z

.field private mChildCount:I

.field mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandLevel3Pos:I

.field private mLastPos:I

.field private mLevel3Count:I

.field private mSelectIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const-string v0, "CameraRecordingAdapter"

    .line 30
    iput-object v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->Tag:Ljava/lang/String;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLastPos:I

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->isFollowOpen:Z

    .line 74
    iput-boolean v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->isManualOpenAndModeE:Z

    .line 79
    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mDataList:Ljava/util/List;

    .line 80
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_camera_recording_setting_video_basic_item:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->addItemType(II)V

    .line 81
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_camera_recording_setting_video_size_item:I

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->addItemType(II)V

    .line 82
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_camera_recording_setting_video_single_text_item:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->addItemType(II)V

    .line 83
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_camera_recording_setting_video_blance_item:I

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->addItemType(II)V

    .line 84
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_camera_recording_setting_video_style_item:I

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->addItemType(II)V

    .line 85
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_camera_recording_setting_video_size_select_item:I

    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->addItemType(II)V

    .line 86
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_camera_recording_setting_video_blance_set_item:I

    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->addItemType(II)V

    .line 87
    sget p1, Lcom/lewis/camera/R$layout;->aircraft_camera_recording_setting_video_style_set_item:I

    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->addItemType(II)V

    return-void
.end method

.method private atomItemExpand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V
    .locals 2

    .line 713
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 714
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {p0, p2, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->collapse(IZ)I

    .line 716
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLevel3Count:I

    goto :goto_0

    .line 720
    :cond_0
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mExpandLevel3Pos:I

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 721
    invoke-virtual {p0, v0, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->collapse(IZ)I

    .line 725
    :cond_1
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mExpandLevel3Pos:I

    if-ge v0, p2, :cond_2

    .line 726
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLevel3Count:I

    sub-int/2addr p2, v0

    .line 730
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->expand(IZ)I

    .line 731
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLevel3Count:I

    .line 732
    iput p2, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mExpandLevel3Pos:I

    goto :goto_0

    .line 737
    :cond_3
    iget p1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mExpandLevel3Pos:I

    if-eqz p1, :cond_4

    .line 738
    invoke-virtual {p0, p1, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->collapse(IZ)I

    .line 739
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLevel3Count:I

    :cond_4
    :goto_0
    return-void
.end method

.method private basicItemExpand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V
    .locals 3

    .line 683
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mExpandLevel3Pos:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0, v0, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->collapse(IZ)I

    .line 686
    :cond_0
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->isExpanded()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {p0, p2}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->collapse(I)I

    .line 688
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mChildCount:I

    .line 689
    iput v2, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLastPos:I

    goto :goto_1

    .line 692
    :cond_1
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLastPos:I

    if-eq v0, p2, :cond_2

    if-eq v0, v2, :cond_2

    .line 693
    invoke-virtual {p0, v0}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->collapse(I)I

    .line 697
    :cond_2
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLastPos:I

    if-le v0, p2, :cond_3

    goto :goto_0

    .line 701
    :cond_3
    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mChildCount:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLevel3Count:I

    sub-int/2addr p2, v0

    .line 703
    :goto_0
    invoke-virtual {p0, p2}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->expand(I)I

    .line 704
    invoke-interface {p1}, Lcom/chad/library/adapter/base/entity/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mChildCount:I

    .line 705
    iput p2, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLastPos:I

    .line 706
    iget-object p1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->Tag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...basicItemExpand...mLastPos="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLastPos:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :goto_1
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mLevel3Count:I

    .line 709
    iput v1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mSelectIndex:I

    return-void
.end method

.method private getAtomItemSelect(III)Z
    .locals 12

    const/16 v0, 0x3c

    const/16 v1, 0x32

    const/16 v2, 0x30

    const/16 v3, 0x1e

    const/16 v4, 0x19

    const/16 v5, 0x18

    const/4 v6, 0x1

    if-nez p1, :cond_5

    if-ne p2, v5, :cond_0

    const/16 p1, 0xc

    if-ne p3, p1, :cond_0

    return v6

    :cond_0
    if-ne p2, v4, :cond_1

    const/16 p1, 0xb

    if-ne p3, p1, :cond_1

    return v6

    :cond_1
    if-ne p2, v3, :cond_2

    if-nez p3, :cond_2

    return v6

    :cond_2
    if-ne p2, v2, :cond_3

    const/16 p1, 0xa

    if-ne p3, p1, :cond_3

    return v6

    :cond_3
    if-ne p2, v1, :cond_4

    const/16 p1, 0x9

    if-ne p3, p1, :cond_4

    return v6

    :cond_4
    if-ne p2, v0, :cond_1a

    if-ne p3, v6, :cond_1a

    return v6

    :cond_5
    const/4 v7, 0x5

    if-ne p1, v7, :cond_b

    if-ne p2, v5, :cond_6

    const/16 p1, 0x17

    if-ne p3, p1, :cond_6

    return v6

    :cond_6
    if-ne p2, v4, :cond_7

    if-ne p3, v5, :cond_7

    return v6

    :cond_7
    if-ne p2, v3, :cond_8

    const/16 p1, 0x16

    if-ne p3, p1, :cond_8

    return v6

    :cond_8
    if-ne p2, v2, :cond_9

    if-ne p3, v4, :cond_9

    return v6

    :cond_9
    if-ne p2, v1, :cond_a

    const/16 p1, 0x1a

    if-ne p3, p1, :cond_a

    return v6

    :cond_a
    if-ne p2, v0, :cond_1a

    const/16 p1, 0x15

    if-ne p3, p1, :cond_1a

    return v6

    :cond_b
    const/4 v8, 0x3

    const/4 v9, 0x2

    if-ne p1, v6, :cond_11

    if-ne p2, v5, :cond_c

    const/16 p1, 0x10

    if-ne p3, p1, :cond_c

    return v6

    :cond_c
    if-ne p2, v4, :cond_d

    const/16 p1, 0xf

    if-ne p3, p1, :cond_d

    return v6

    :cond_d
    if-ne p2, v3, :cond_e

    if-ne p3, v9, :cond_e

    return v6

    :cond_e
    if-ne p2, v2, :cond_f

    const/16 p1, 0xe

    if-ne p3, p1, :cond_f

    return v6

    :cond_f
    if-ne p2, v1, :cond_10

    const/16 p1, 0xd

    if-ne p3, p1, :cond_10

    return v6

    :cond_10
    if-ne p2, v0, :cond_1a

    if-ne p3, v8, :cond_1a

    return v6

    :cond_11
    const/4 v10, 0x4

    const/16 v11, 0x78

    if-ne p1, v9, :cond_12

    if-ne p2, v11, :cond_1a

    if-ne p3, v10, :cond_1a

    return v6

    :cond_12
    if-ne p1, v8, :cond_18

    if-ne p2, v5, :cond_13

    const/16 p1, 0x13

    if-ne p3, p1, :cond_13

    return v6

    :cond_13
    if-ne p2, v4, :cond_14

    const/16 p1, 0x14

    if-ne p3, p1, :cond_14

    return v6

    :cond_14
    if-ne p2, v3, :cond_15

    if-ne p3, v7, :cond_15

    return v6

    :cond_15
    if-ne p2, v2, :cond_16

    const/16 p1, 0x12

    if-ne p3, p1, :cond_16

    return v6

    :cond_16
    if-ne p2, v1, :cond_17

    const/16 p1, 0x11

    if-ne p3, p1, :cond_17

    return v6

    :cond_17
    if-ne p2, v0, :cond_1a

    const/4 p1, 0x6

    if-ne p3, p1, :cond_1a

    return v6

    :cond_18
    if-ne p1, v10, :cond_1a

    if-ne p2, v11, :cond_19

    const/4 p1, 0x7

    if-ne p3, p1, :cond_19

    return v6

    :cond_19
    const/16 p1, 0xf0

    if-ne p2, p1, :cond_1a

    const/16 p1, 0x8

    if-ne p3, p1, :cond_1a

    return v6

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$convert$2(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;Landroid/view/View;)V
    .locals 2

    .line 237
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    if-nez p1, :cond_0

    .line 238
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 240
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ne p1, v0, :cond_2

    .line 242
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 244
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 246
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 247
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_5

    .line 248
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic lambda$convert$3(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;Landroid/view/View;)V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    if-nez p1, :cond_0

    .line 253
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 255
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 258
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 260
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_5

    .line 262
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic lambda$convert$4(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;Landroid/view/View;)V
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    if-nez p1, :cond_0

    .line 267
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 269
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x5

    if-ne p1, v0, :cond_3

    .line 272
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 274
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p0

    if-ne p0, v1, :cond_5

    .line 275
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic lambda$convert$5(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;ZLandroid/view/View;)V
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    if-nez p2, :cond_0

    if-nez p1, :cond_5

    .line 282
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_5

    .line 286
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 290
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 291
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    goto :goto_0

    .line 292
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p0

    const/4 p2, 0x5

    if-ne p0, p2, :cond_5

    if-nez p1, :cond_5

    .line 294
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x19

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic lambda$convert$6(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;ZLandroid/view/View;)V
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    if-nez p2, :cond_0

    if-nez p1, :cond_5

    .line 301
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_5

    .line 305
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 309
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 310
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    goto :goto_0

    .line 311
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p0

    const/4 p2, 0x5

    if-ne p0, p2, :cond_5

    if-nez p1, :cond_5

    .line 313
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic lambda$convert$7(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;ZLandroid/view/View;)V
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    if-nez p1, :cond_5

    .line 320
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_5

    .line 324
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 328
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    goto :goto_0

    .line 330
    :cond_4
    invoke-virtual {p0}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p0

    const/4 p2, 0x5

    if-ne p0, p2, :cond_5

    if-nez p1, :cond_5

    .line 332
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Lcom/powervision/camera/camera/CameraManager;->setVedioResolution(I)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V
    .locals 9

    .line 103
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->isInNormalFollow()Z

    move-result v0

    .line 104
    iget-boolean v1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->isFollowOpen:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->isManualOpenAndModeE:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 105
    :goto_1
    invoke-interface {p2}, Lcom/chad/library/adapter/base/entity/MultiItemEntity;->getItemType()I

    move-result v1

    const v4, 0x106000d

    if-ne v1, v3, :cond_a

    .line 106
    instance-of v5, p2, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;

    if-eqz v5, :cond_a

    .line 107
    check-cast p2, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;

    .line 108
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getLayoutType()I

    move-result v0

    const/4 v1, 0x2

    const-string v5, ""

    if-ne v0, v1, :cond_3

    .line 109
    sget v0, Lcom/lewis/camera/R$id;->camera_recording_setting_base_title_tv:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getItemTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_base_content_tv:I

    .line 110
    invoke-virtual {v0, v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_base_content_tv:I

    .line 111
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_base_content_layout:I

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_recording_video_size:I

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_resolution:I

    .line 115
    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_fps:I

    .line 116
    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_resolution:I

    .line 118
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v2

    invoke-static {v2}, Lcom/powervision/camera/utils/CameraUtil;->getCameraResolutionStr(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_fps:I

    .line 120
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v2

    .line 119
    invoke-static {v2}, Lcom/powervision/camera/utils/CameraUtil;->getCameraResolutionFps(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_base_arrow:I

    .line 121
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow_down:I

    goto :goto_2

    :cond_2
    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow:I

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto/16 :goto_8

    .line 123
    :cond_3
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getLayoutType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 124
    sget v0, Lcom/lewis/camera/R$id;->camera_recording_setting_base_title_tv:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getItemTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v3, Lcom/lewis/camera/R$id;->camera_recording_setting_base_content_tv:I

    .line 126
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getLayoutType()I

    move-result v6

    if-ne v6, v1, :cond_4

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getVideoFormatString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getItemContent()Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_3
    invoke-virtual {v0, v3, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_resolution:I

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_fps:I

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_resolution:I

    .line 129
    invoke-virtual {v0, v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_fps:I

    .line 130
    invoke-virtual {v0, v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_base_content_layout:I

    .line 131
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_base_arrow:I

    .line 134
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow_down:I

    goto :goto_4

    :cond_5
    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow:I

    .line 133
    :goto_4
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_8

    .line 136
    :cond_6
    sget v0, Lcom/lewis/camera/R$id;->camera_recording_setting_base_title_tv:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getItemTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_base_content_tv:I

    .line 138
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getLayoutType()I

    move-result v6

    if-ne v6, v3, :cond_7

    move-object v6, v5

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getItemContent()Ljava/lang/String;

    move-result-object v6

    .line 137
    :goto_5
    invoke-virtual {v0, v1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_base_content_tv:I

    .line 140
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getLayoutType()I

    move-result v6

    if-ne v6, v3, :cond_8

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->getItemContentBg()I

    move-result v3

    goto :goto_6

    :cond_8
    sget v3, Lcom/lewis/camera/R$drawable;->radius_stroke_rectangle_blue:I

    .line 139
    :goto_6
    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_resolution:I

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_fps:I

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_resolution:I

    .line 144
    invoke-virtual {v0, v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_littile_fps:I

    .line 145
    invoke-virtual {v0, v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_base_content_layout:I

    .line 146
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_base_arrow:I

    .line 149
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow_down:I

    goto :goto_7

    :cond_9
    sget v2, Lcom/lewis/camera/R$mipmap;->icon_arrow:I

    .line 148
    :goto_7
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 151
    :goto_8
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$tW-Q6eiB0gs2mAEh5d38zFXPIco;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$tW-Q6eiB0gs2mAEh5d38zFXPIco;-><init>(Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_a
    const/16 v5, 0xb

    if-ne v1, v5, :cond_c

    .line 161
    instance-of v5, p2, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;

    if-eqz v5, :cond_c

    .line 162
    check-cast p2, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;

    .line 163
    sget v0, Lcom/lewis/camera/R$id;->camera_recording_setting_size_title_tv:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->getItemTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_size_content_tv:I

    .line 164
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->getItemContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_size_select_tv:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->getItemSelectFPS()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/lewis/camera/R$string;->aircraft_video_size_unit:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    sget v1, Lcom/lewis/camera/R$id;->camera_recording_setting_select_layout:I

    .line 169
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;->getType()I

    move-result v2

    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v3

    .line 168
    invoke-static {v2, v3}, Lcom/powervision/camera/utils/CameraUtil;->getCurrentSelctChild(II)Z

    move-result v2

    if-eqz v2, :cond_b

    sget v4, Lcom/lewis/camera/R$color;->blue:I

    :cond_b
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 171
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$aNHZT2LTKMQ4-BUiFv1Pmx0s5JY;

    invoke-direct {v1, p0, p1, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$aNHZT2LTKMQ4-BUiFv1Pmx0s5JY;-><init>(Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_c
    const/16 v5, 0x15

    if-ne v1, v5, :cond_1a

    .line 177
    instance-of v5, p2, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

    if-eqz v5, :cond_1a

    .line 178
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentResolution()I

    move-result v1

    .line 179
    check-cast p2, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

    .line 180
    sget v4, Lcom/lewis/camera/R$id;->camera_recording_setting_left:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeLeft()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/lewis/camera/R$string;->aircraft_video_size_unit:I

    .line 181
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-virtual {p1, v4, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    sget v5, Lcom/lewis/camera/R$id;->camera_recording_setting_middle:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeMiddle()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/lewis/camera/R$string;->aircraft_video_size_unit:I

    .line 183
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-virtual {v4, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    sget v5, Lcom/lewis/camera/R$id;->camera_recording_setting_right:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeRight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/lewis/camera/R$string;->aircraft_video_size_unit:I

    .line 185
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-virtual {v4, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    sget v5, Lcom/lewis/camera/R$id;->camera_recording_setting_left2:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeLeftBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/lewis/camera/R$string;->aircraft_video_size_unit:I

    .line 187
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {v4, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    sget v5, Lcom/lewis/camera/R$id;->camera_recording_setting_middle2:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeMiddleBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/lewis/camera/R$string;->aircraft_video_size_unit:I

    .line 190
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    invoke-virtual {v4, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    sget v5, Lcom/lewis/camera/R$id;->camera_recording_setting_right2:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeRightBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    sget v8, Lcom/lewis/camera/R$string;->aircraft_video_size_unit:I

    .line 192
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {v4, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    sget v5, Lcom/lewis/camera/R$id;->camera_recording_setting_middle:I

    .line 194
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeMiddle()I

    move-result v6

    if-lez v6, :cond_d

    const/4 v6, 0x1

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v4, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    sget v5, Lcom/lewis/camera/R$id;->camera_recording_setting_right:I

    .line 195
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeRight()I

    move-result v6

    if-lez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v4, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    sget v5, Lcom/lewis/camera/R$id;->camera_recording_setting_left2:I

    .line 196
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeLeftBottom()I

    move-result v6

    if-lez v6, :cond_f

    const/4 v6, 0x1

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v4, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    sget v5, Lcom/lewis/camera/R$id;->camera_recording_setting_middle2:I

    .line 197
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeMiddleBottom()I

    move-result v6

    if-lez v6, :cond_10

    const/4 v6, 0x1

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v4, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    sget v5, Lcom/lewis/camera/R$id;->camera_recording_setting_right2:I

    .line 198
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeRightBottom()I

    move-result v6

    if-lez v6, :cond_11

    const/4 v2, 0x1

    :cond_11
    invoke-virtual {v4, v5, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v4, Lcom/lewis/camera/R$id;->camera_recording_setting_left:I

    .line 201
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result v5

    .line 202
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeLeft()I

    move-result v6

    .line 201
    invoke-direct {p0, v5, v6, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->getAtomItemSelect(III)Z

    move-result v5

    const v6, 0x106000b

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_d

    :cond_12
    iget-object v5, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 201
    :goto_d
    invoke-virtual {v2, v4, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v4, Lcom/lewis/camera/R$id;->camera_recording_setting_middle:I

    .line 206
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result v5

    .line 207
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeMiddle()I

    move-result v7

    .line 206
    invoke-direct {p0, v5, v7, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->getAtomItemSelect(III)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 208
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_e

    :cond_13
    iget-object v5, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 205
    :goto_e
    invoke-virtual {v2, v4, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v4, Lcom/lewis/camera/R$id;->camera_recording_setting_right:I

    .line 211
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result v5

    .line 212
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeRight()I

    move-result v7

    .line 211
    invoke-direct {p0, v5, v7, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->getAtomItemSelect(III)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_f

    :cond_14
    iget-object v5, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 210
    :goto_f
    invoke-virtual {v2, v4, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v4, Lcom/lewis/camera/R$id;->camera_recording_setting_left2:I

    .line 218
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result v5

    .line 219
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeLeftBottom()I

    move-result v7

    .line 218
    invoke-direct {p0, v5, v7, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->getAtomItemSelect(III)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_10

    :cond_15
    iget-object v5, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 217
    :goto_10
    invoke-virtual {v2, v4, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v4, Lcom/lewis/camera/R$id;->camera_recording_setting_middle2:I

    .line 223
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result v5

    .line 224
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeMiddleBottom()I

    move-result v7

    .line 223
    invoke-direct {p0, v5, v7, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->getAtomItemSelect(III)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 225
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_11

    :cond_16
    iget-object v5, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 226
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 222
    :goto_11
    invoke-virtual {v2, v4, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v2

    sget v4, Lcom/lewis/camera/R$id;->camera_recording_setting_right2:I

    .line 228
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result v5

    .line 229
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomSizeRightBottom()I

    move-result v7

    .line 228
    invoke-direct {p0, v5, v7, v1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->getAtomItemSelect(III)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/lewis/camera/R$color;->blue:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_12

    :cond_17
    iget-object v1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    .line 231
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 227
    :goto_12
    invoke-virtual {v2, v4, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$id;->camera_recording_setting_left:I

    new-instance v4, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$qik520T6mW3WL7abosdLmkAMo6w;

    invoke-direct {v4, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$qik520T6mW3WL7abosdLmkAMo6w;-><init>(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;)V

    .line 236
    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$id;->camera_recording_setting_middle:I

    new-instance v4, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$4Zy0QTy0GEkULdCx49z04i5aX-U;

    invoke-direct {v4, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$4Zy0QTy0GEkULdCx49z04i5aX-U;-><init>(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;)V

    .line 251
    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$id;->camera_recording_setting_right:I

    new-instance v4, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$N7cNp-wo_n6d-ZEthFCoL_pgMhM;

    invoke-direct {v4, p2}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$N7cNp-wo_n6d-ZEthFCoL_pgMhM;-><init>(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;)V

    .line 265
    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$id;->camera_recording_setting_left2:I

    new-instance v4, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$_EznviZnFS17BM7CfkjKtrPc7fw;

    invoke-direct {v4, p2, v0}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$_EznviZnFS17BM7CfkjKtrPc7fw;-><init>(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;Z)V

    .line 279
    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$id;->camera_recording_setting_middle2:I

    new-instance v4, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$Li-MRlUtU0zdFn2HgXS3WmcWHcw;

    invoke-direct {v4, p2, v0}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$Li-MRlUtU0zdFn2HgXS3WmcWHcw;-><init>(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;Z)V

    .line 298
    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$id;->camera_recording_setting_right2:I

    new-instance v4, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$eggQgEPK9f-r0R_W09f6pQhT1nA;

    invoke-direct {v4, p2, v0}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$eggQgEPK9f-r0R_W09f6pQhT1nA;-><init>(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;Z)V

    .line 317
    invoke-virtual {v1, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/chad/library/adapter/base/BaseViewHolder;

    if-eqz v0, :cond_1c

    .line 338
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;->getAtomType()I

    move-result p2

    if-ne p2, v3, :cond_18

    goto :goto_13

    .line 343
    :cond_18
    sget p2, Lcom/lewis/camera/R$id;->camera_recording_setting_left2:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 344
    sget p2, Lcom/lewis/camera/R$id;->camera_recording_setting_middle2:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 345
    sget p2, Lcom/lewis/camera/R$id;->camera_recording_setting_right2:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_14

    .line 339
    :cond_19
    :goto_13
    sget p2, Lcom/lewis/camera/R$id;->camera_recording_setting_left2:I

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 340
    sget p2, Lcom/lewis/camera/R$id;->camera_recording_setting_middle2:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 341
    sget p2, Lcom/lewis/camera/R$id;->camera_recording_setting_right2:I

    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_14

    :cond_1a
    const/16 v0, 0xc

    if-ne v1, v0, :cond_1c

    .line 350
    instance-of v0, p2, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;

    if-eqz v0, :cond_1c

    .line 351
    check-cast p2, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;

    .line 352
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/camera/camera/CameraManager;->getCameraMuxerFormatType()I

    move-result v0

    .line 353
    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->getFormatType()I

    move-result v1

    .line 354
    sget v2, Lcom/lewis/camera/R$id;->camera_recording_setting_single_content_tv:I

    invoke-virtual {p2}, Lcom/powervision/camera/model/bean/CameraRecordingVideoSingleTextChild;->getItemContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p2

    sget v2, Lcom/lewis/camera/R$id;->item_root_layout:I

    if-ne v0, v1, :cond_1b

    sget v4, Lcom/lewis/camera/R$color;->blue:I

    .line 355
    :cond_1b
    invoke-virtual {p2, v2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setBackgroundRes(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 357
    iget-object p2, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$V0FhlPPJezZvGCE4r_F68sucf0Q;

    invoke-direct {v0, p0, p1}, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$V0FhlPPJezZvGCE4r_F68sucf0Q;-><init>(Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c
    :goto_14
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V

    return-void
.end method

.method public synthetic lambda$convert$0$CameraRecordingAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraRecordingVideoBasicGroup;Landroid/view/View;)V
    .locals 1

    .line 152
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 153
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 154
    invoke-static {}, Lcom/powervision/livestreaming/LiveStreaming;->getInstance()Lcom/powervision/livestreaming/LiveStreaming;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/livestreaming/LiveStreaming;->isLiveRunning()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 155
    sget p1, Lcom/lewis/camera/R$string;->AP03_DV_GeneralSetting_41_1:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    return-void

    .line 158
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->basicItemExpand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$convert$1$CameraRecordingAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeChild;Landroid/view/View;)V
    .locals 1

    .line 172
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 174
    invoke-direct {p0, p2, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->atomItemExpand(Lcom/chad/library/adapter/base/entity/IExpandable;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$convert$8$CameraRecordingAdapter(Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V
    .locals 1

    .line 358
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 360
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->setMuxerFormat(I)I

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 362
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string p2, "AP03_MC_VERSION"

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 363
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mcVersion = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 364
    iget-object p2, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/lewis/camera/R$string;->MOV:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBiggerOrSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 365
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/powervision/camera/camera/CameraManager;->setMuxerFormat(I)I

    goto :goto_0

    .line 367
    :cond_1
    sget p1, Lcom/lewis/camera/R$string;->AP03_Msg_62_24:I

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFollowOpen(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->isFollowOpen:Z

    .line 93
    invoke-virtual {p0}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setManualOpenAndModeE(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->isManualOpenAndModeE:Z

    .line 98
    invoke-virtual {p0}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->notifyDataSetChanged()V

    return-void
.end method
