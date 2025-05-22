.class public Lcom/powervision/gcs/model/ship/ShipMeidiaFileList;
.super Ljava/lang/Object;
.source "ShipMeidiaFileList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;
    }
.end annotation


# instance fields
.field private CmdId:I

.field private Parameter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;"
        }
    .end annotation
.end field

.field private State:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList;->CmdId:I

    return v0
.end method

.method public getParameter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList;->Parameter:Ljava/util/List;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList;->State:I

    return v0
.end method

.method public setCmdId(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList;->CmdId:I

    return-void
.end method

.method public setParameter(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList;->Parameter:Ljava/util/List;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList;->State:I

    return-void
.end method
