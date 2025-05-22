.class Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;
.super Ljava/lang/Object;
.source "ShipSelfCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorsChildHolder"
.end annotation


# instance fields
.field public mTvGps:Landroid/widget/TextView;

.field public mTvImu:Landroid/widget/TextView;

.field public mTvMaget:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$1;)V
    .locals 0

    .line 564
    invoke-direct {p0}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$SensorsChildHolder;-><init>()V

    return-void
.end method
