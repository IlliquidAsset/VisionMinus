.class public Lcom/powervision/oss/bean/FlightLogUploadData;
.super Ljava/lang/Object;
.source "FlightLogUploadData.java"


# instance fields
.field fileName:Ljava/lang/String;

.field filePath:Ljava/lang/String;

.field psnCode:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->fileName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->filePath:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->userId:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->psnCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPsnCode()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->psnCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setPsnCode(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->psnCode:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUploadData;->userId:Ljava/lang/String;

    return-void
.end method
