.class public Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;
.super Ljava/lang/Object;
.source "FlightLogUserAllData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/oss/bean/FlightLogUserAllData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlyLogsBean"
.end annotation


# instance fields
.field private add_time:Ljava/lang/String;

.field private file_name:Ljava/lang/String;

.field private id:I

.field private psn:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->file_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->add_time:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_name()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->id:I

    return v0
.end method

.method public getPsn()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->psn:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->add_time:Ljava/lang/String;

    return-void
.end method

.method public setFile_name(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->file_name:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->id:I

    return-void
.end method

.method public setPsn(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->psn:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;->user_id:Ljava/lang/String;

    return-void
.end method
