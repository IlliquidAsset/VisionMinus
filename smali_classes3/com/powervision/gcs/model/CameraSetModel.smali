.class public Lcom/powervision/gcs/model/CameraSetModel;
.super Ljava/lang/Object;
.source "CameraSetModel.java"


# instance fields
.field private childs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/CameraModel;",
            ">;"
        }
    .end annotation
.end field

.field private groupTpye:I

.field private name:Ljava/lang/String;

.field private showWBV:Z

.field private value:Ljava/lang/String;

.field private value_int:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/CameraModel;",
            ">;IIZ)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraSetModel;->name:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/powervision/gcs/model/CameraSetModel;->childs:Ljava/util/List;

    .line 71
    iput p3, p0, Lcom/powervision/gcs/model/CameraSetModel;->groupTpye:I

    .line 72
    iput p4, p0, Lcom/powervision/gcs/model/CameraSetModel;->value_int:I

    .line 73
    iput-boolean p5, p0, Lcom/powervision/gcs/model/CameraSetModel;->showWBV:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/CameraModel;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraSetModel;->name:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/powervision/gcs/model/CameraSetModel;->childs:Ljava/util/List;

    .line 58
    iput p3, p0, Lcom/powervision/gcs/model/CameraSetModel;->groupTpye:I

    .line 59
    iput-object p4, p0, Lcom/powervision/gcs/model/CameraSetModel;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/CameraModel;",
            ">;I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraSetModel;->name:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/powervision/gcs/model/CameraSetModel;->childs:Ljava/util/List;

    .line 64
    iput p3, p0, Lcom/powervision/gcs/model/CameraSetModel;->groupTpye:I

    .line 65
    iput-object p4, p0, Lcom/powervision/gcs/model/CameraSetModel;->value:Ljava/lang/String;

    .line 66
    iput-boolean p5, p0, Lcom/powervision/gcs/model/CameraSetModel;->showWBV:Z

    return-void
.end method


# virtual methods
.method public getChilds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/CameraModel;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraSetModel;->childs:Ljava/util/List;

    return-object v0
.end method

.method public getGroupTpye()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/powervision/gcs/model/CameraSetModel;->groupTpye:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraSetModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/powervision/gcs/model/CameraSetModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValue_int()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/powervision/gcs/model/CameraSetModel;->value_int:I

    return v0
.end method

.method public isShowWBV()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/powervision/gcs/model/CameraSetModel;->showWBV:Z

    return v0
.end method

.method public setChilds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/CameraModel;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraSetModel;->childs:Ljava/util/List;

    return-void
.end method

.method public setGroupTpye(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/powervision/gcs/model/CameraSetModel;->groupTpye:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraSetModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setShowWBV(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/powervision/gcs/model/CameraSetModel;->showWBV:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/powervision/gcs/model/CameraSetModel;->value:Ljava/lang/String;

    return-void
.end method

.method public setValue_int(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/powervision/gcs/model/CameraSetModel;->value_int:I

    return-void
.end method
