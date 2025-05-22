.class public Lcom/powervision/camera/model/impl/CameraGeneralModel;
.super Ljava/lang/Object;
.source "CameraGeneralModel.java"

# interfaces
.implements Lcom/powervision/camera/model/ICameraGeneralModel;


# instance fields
.field private final mGridResId:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 30
    sget v1, Lcom/lewis/camera/R$mipmap;->aircraft_icon_none_select:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/lewis/camera/R$mipmap;->aircraft_grid_select:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/lewis/camera/R$mipmap;->aircraft_grid_diagonal_select:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iput-object v0, p0, Lcom/powervision/camera/model/impl/CameraGeneralModel;->mGridResId:[I

    return-void
.end method


# virtual methods
.method public getCameraGeneralData(Landroidx/fragment/app/FragmentActivity;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_37:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_93:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_38:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_46:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_47:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup1;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_48:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_49:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_49:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->addSubItem(Ljava/lang/Object;)V

    .line 48
    new-instance v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    const-string v2, "50Hz"

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->addSubItem(Ljava/lang/Object;)V

    .line 49
    new-instance v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    const-string v2, "60Hz"

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->addSubItem(Ljava/lang/Object;)V

    .line 50
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;

    .line 54
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_50:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$mipmap;->aircraft_icon_none_select:I

    invoke-direct {v0, v1, v2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;-><init>(Ljava/lang/String;I)V

    .line 56
    new-instance v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_49:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$mipmap;->aircraft_icon_none:I

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;-><init>(Ljava/lang/String;IZI)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->addSubItem(Ljava/lang/Object;)V

    .line 59
    new-instance v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$string;->AP03_CameraSetting_51:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$mipmap;->aircraft_grid:I

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;-><init>(Ljava/lang/String;IZI)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->addSubItem(Ljava/lang/Object;)V

    .line 61
    new-instance v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$string;->AP03_CameraSetting_52:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$mipmap;->aircraft_grid_diagonal:I

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;-><init>(Ljava/lang/String;IZI)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->addSubItem(Ljava/lang/Object;)V

    .line 63
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_53:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lewis/camera/R$string;->AP03_CameraSetting_54:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "16G"

    const/4 v6, 0x2

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->addSubItem(Ljava/lang/Object;)V

    .line 69
    new-instance v1, Lcom/powervision/camera/model/bean/CameraGeneralChild1;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_55:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/powervision/camera/model/bean/CameraGeneralChild1;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup2;->addSubItem(Ljava/lang/Object;)V

    .line 70
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_56:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lewis/camera/R$string;->AP03_CameraSetting_59:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/lewis/camera/R$string;->AP03_DV_CameraSetting_61:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/powervision/camera/model/bean/CameraGeneraGroup3;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGridImageResId(I)I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/powervision/camera/model/impl/CameraGeneralModel;->mGridResId:[I

    aget p1, v0, p1

    return p1
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/LineData;
    .locals 8

    .line 86
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xff

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    .line 89
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v6, v3

    const v7, 0xc350

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v5

    int-to-float v5, v7

    invoke-direct {v4, v6, v5}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v3, "Label"

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 92
    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 93
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 94
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 95
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 96
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    const/4 v1, -0x1

    .line 97
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 98
    new-instance v1, Lcom/github/mikephil/charting/data/LineData;

    new-array v3, v5, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v0, v3, v2

    invoke-direct {v1, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    return-object v1
.end method

.method public getLineData([I)Lcom/github/mikephil/charting/data/LineData;
    .locals 7

    .line 104
    array-length v0, p1

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 107
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v5, v3

    aget v6, p1, v3

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_0
    new-instance p1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v0, "Label"

    invoke-direct {p1, v1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 111
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 112
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    const/16 v1, 0xff

    .line 114
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    const/4 v1, -0x1

    .line 115
    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 116
    new-instance v1, Lcom/github/mikephil/charting/data/LineData;

    new-array v0, v0, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object p1, v0, v2

    invoke-direct {v1, v0}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    return-object v1
.end method
