.class public Lcom/powervision/oss/bean/FlightLogUserAllData;
.super Ljava/lang/Object;
.source "FlightLogUserAllData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;
    }
.end annotation


# instance fields
.field private flyLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;",
            ">;"
        }
    .end annotation
.end field

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlyLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/powervision/oss/bean/FlightLogUserAllData;->flyLogs:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/powervision/oss/bean/FlightLogUserAllData;->status:I

    return v0
.end method

.method public setFlyLogs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/oss/bean/FlightLogUserAllData$FlyLogsBean;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/powervision/oss/bean/FlightLogUserAllData;->flyLogs:Ljava/util/List;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/powervision/oss/bean/FlightLogUserAllData;->status:I

    return-void
.end method
