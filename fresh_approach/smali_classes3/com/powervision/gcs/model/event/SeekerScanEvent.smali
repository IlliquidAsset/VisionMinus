.class public Lcom/powervision/gcs/model/event/SeekerScanEvent;
.super Ljava/lang/Object;
.source "SeekerScanEvent.java"


# instance fields
.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/powervision/gcs/model/event/SeekerScanEvent;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/powervision/gcs/model/event/SeekerScanEvent;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/powervision/gcs/model/event/SeekerScanEvent;->result:Ljava/lang/String;

    return-void
.end method
