.class public Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;
.super Ljava/lang/Object;
.source "ShipMeidiaFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipMeidiaFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterBean"
.end annotation


# instance fields
.field private creattime:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:J

.field private thmfile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreattime()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->creattime:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->size:J

    return-wide v0
.end method

.method public getThmfile()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->thmfile:Ljava/lang/String;

    return-object v0
.end method

.method public setCreattime(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->creattime:Ljava/lang/String;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->filename:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->path:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->size:J

    return-void
.end method

.method public setThmfile(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipMeidiaFileList$ParameterBean;->thmfile:Ljava/lang/String;

    return-void
.end method
