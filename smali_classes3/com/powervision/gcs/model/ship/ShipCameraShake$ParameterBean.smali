.class public Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;
.super Ljava/lang/Object;
.source "ShipCameraShake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipCameraShake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private _$VarEnable71:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "var enable"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get_$VarEnable71()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;->_$VarEnable71:I

    return v0
.end method

.method public set_$VarEnable71(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraShake$ParameterBean;->_$VarEnable71:I

    return-void
.end method
