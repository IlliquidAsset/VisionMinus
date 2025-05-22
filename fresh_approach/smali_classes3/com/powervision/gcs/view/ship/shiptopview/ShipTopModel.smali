.class public Lcom/powervision/gcs/view/ship/shiptopview/ShipTopModel;
.super Landroidx/lifecycle/ViewModel;
.source "ShipTopModel.java"


# instance fields
.field private mCurrentName:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentName()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopModel;->mCurrentName:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopModel;->mCurrentName:Landroidx/lifecycle/MutableLiveData;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/shiptopview/ShipTopModel;->mCurrentName:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
