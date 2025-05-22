.class public Lcom/powervision/aircraft/lapse/viewmodel/AngleViewModel;
.super Ljava/lang/Object;
.source "AngleViewModel.java"


# instance fields
.field private angleInfoMutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/powervision/aircraft/lapse/data/AngleInfo;",
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
.method public getAngleInfoMutableLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/powervision/aircraft/lapse/data/AngleInfo;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/powervision/aircraft/lapse/viewmodel/AngleViewModel;->angleInfoMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    :cond_0
    return-object v0
.end method
