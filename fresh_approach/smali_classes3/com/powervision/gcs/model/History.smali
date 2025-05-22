.class public Lcom/powervision/gcs/model/History;
.super Ljava/lang/Object;
.source "History.java"


# instance fields
.field public Date:Ljava/lang/String;

.field public clock:Ljava/lang/String;

.field public datalen:Ljava/lang/String;

.field public imgPath:Ljava/lang/String;

.field public lineLen:I

.field public modifytime:J

.field public path:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModifytime()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/powervision/gcs/model/History;->modifytime:J

    return-wide v0
.end method

.method public setModifytime(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/powervision/gcs/model/History;->modifytime:J

    return-void
.end method
