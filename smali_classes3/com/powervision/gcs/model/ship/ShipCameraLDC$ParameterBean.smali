.class public Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;
.super Ljava/lang/Object;
.source "ShipCameraLDC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipCameraLDC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private _$VarEnable110:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "var enable"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get_$VarEnable110()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;->_$VarEnable110:Ljava/lang/String;

    return-object v0
.end method

.method public set_$VarEnable110(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipCameraLDC$ParameterBean;->_$VarEnable110:Ljava/lang/String;

    return-void
.end method
