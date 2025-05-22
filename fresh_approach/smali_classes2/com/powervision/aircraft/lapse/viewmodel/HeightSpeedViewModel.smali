.class public Lcom/powervision/aircraft/lapse/viewmodel/HeightSpeedViewModel;
.super Ljava/lang/Object;
.source "HeightSpeedViewModel.java"


# instance fields
.field private heightSpeedInfoMutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeightSpeedInfoMutableLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/powervision/aircraft/lapse/data/HeightSpeedInfo;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/powervision/aircraft/lapse/viewmodel/HeightSpeedViewModel;->heightSpeedInfoMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/lapse/viewmodel/HeightSpeedViewModel;->heightSpeedInfoMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/lapse/viewmodel/HeightSpeedViewModel;->heightSpeedInfoMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
