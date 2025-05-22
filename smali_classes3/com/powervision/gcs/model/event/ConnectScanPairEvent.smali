.class public Lcom/powervision/gcs/model/event/ConnectScanPairEvent;
.super Ljava/lang/Object;
.source "ConnectScanPairEvent.java"


# instance fields
.field private resultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/powervision/gcs/model/event/ConnectScanPairEvent;->resultCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/powervision/gcs/model/event/ConnectScanPairEvent;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/powervision/gcs/model/event/ConnectScanPairEvent;->resultCode:Ljava/lang/String;

    return-void
.end method
