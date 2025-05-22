.class public Lcom/powervision/gcs/view/ship/model/RemoteInfoDetail;
.super Ljava/lang/Object;
.source "RemoteInfoDetail.java"


# instance fields
.field public command:I

.field public status:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/powervision/gcs/view/ship/model/RemoteInfoDetail;->command:I

    .line 14
    iput p2, p0, Lcom/powervision/gcs/view/ship/model/RemoteInfoDetail;->status:I

    .line 15
    iput-object p3, p0, Lcom/powervision/gcs/view/ship/model/RemoteInfoDetail;->value:Ljava/lang/String;

    return-void
.end method
