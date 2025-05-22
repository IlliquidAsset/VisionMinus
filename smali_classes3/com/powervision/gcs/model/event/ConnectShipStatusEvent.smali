.class public Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;
.super Ljava/lang/Object;
.source "ConnectShipStatusEvent.java"


# instance fields
.field public isConnected:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/powervision/gcs/model/event/ConnectShipStatusEvent;->isConnected:Z

    return-void
.end method
