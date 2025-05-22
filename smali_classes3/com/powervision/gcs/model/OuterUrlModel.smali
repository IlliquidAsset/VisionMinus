.class public Lcom/powervision/gcs/model/OuterUrlModel;
.super Ljava/lang/Object;
.source "OuterUrlModel.java"


# instance fields
.field private cid:Ljava/lang/String;

.field private cip:Ljava/lang/String;

.field private cname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/powervision/gcs/model/OuterUrlModel;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCip()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/powervision/gcs/model/OuterUrlModel;->cip:Ljava/lang/String;

    return-object v0
.end method

.method public getCname()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/powervision/gcs/model/OuterUrlModel;->cname:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/gcs/model/OuterUrlModel;->cid:Ljava/lang/String;

    return-void
.end method

.method public setCip(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/powervision/gcs/model/OuterUrlModel;->cip:Ljava/lang/String;

    return-void
.end method

.method public setCname(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/gcs/model/OuterUrlModel;->cname:Ljava/lang/String;

    return-void
.end method
