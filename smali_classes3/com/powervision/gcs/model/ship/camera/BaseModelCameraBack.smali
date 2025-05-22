.class public Lcom/powervision/gcs/model/ship/camera/BaseModelCameraBack;
.super Ljava/lang/Object;
.source "BaseModelCameraBack.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private CmdId:Ljava/lang/String;

.field private Parameter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private State:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e8

    .line 35
    iput v0, p0, Lcom/powervision/gcs/model/ship/camera/BaseModelCameraBack;->State:I

    return-void
.end method


# virtual methods
.method public getCmdId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/camera/BaseModelCameraBack;->CmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/camera/BaseModelCameraBack;->Parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/powervision/gcs/model/ship/camera/BaseModelCameraBack;->State:I

    return v0
.end method

.method public setCmdId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/camera/BaseModelCameraBack;->CmdId:Ljava/lang/String;

    return-void
.end method

.method public setParameter(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/camera/BaseModelCameraBack;->Parameter:Ljava/lang/Object;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/powervision/gcs/model/ship/camera/BaseModelCameraBack;->State:I

    return-void
.end method
