.class public Lcom/powervision/gcs/model/event/TakePhotoEvent;
.super Ljava/lang/Object;
.source "TakePhotoEvent.java"


# instance fields
.field public isSuccess:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/powervision/gcs/model/event/TakePhotoEvent;->isSuccess:Z

    return-void
.end method
