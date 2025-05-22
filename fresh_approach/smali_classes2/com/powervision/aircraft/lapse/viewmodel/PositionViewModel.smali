.class public Lcom/powervision/aircraft/lapse/viewmodel/PositionViewModel;
.super Ljava/lang/Object;
.source "PositionViewModel.java"


# instance fields
.field public positionInfo:Lcom/powervision/aircraft/lapse/data/PositionInfo;

.field private positionInfoMutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/powervision/aircraft/lapse/data/PositionInfo;",
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
.method public getPositionInfoMutableLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/powervision/aircraft/lapse/data/PositionInfo;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/powervision/aircraft/lapse/viewmodel/PositionViewModel;->positionInfoMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    :cond_0
    return-object v0
.end method
