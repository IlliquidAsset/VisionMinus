.class public Lcn/powervision/upgrade/model/ReleaseNote;
.super Ljava/lang/Object;
.source "ReleaseNote.java"


# instance fields
.field private addTime:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private deviceVersion:Ljava/lang/String;

.field private releaseNoteEN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private releaseNoteJA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private releaseNoteZH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcn/powervision/upgrade/model/ReleaseNote;->addTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/powervision/upgrade/model/ReleaseNote;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/powervision/upgrade/model/ReleaseNote;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseNoteEN()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcn/powervision/upgrade/model/ReleaseNote;->releaseNoteEN:Ljava/util/List;

    return-object v0
.end method

.method public getReleaseNoteJA()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcn/powervision/upgrade/model/ReleaseNote;->releaseNoteJA:Ljava/util/List;

    return-object v0
.end method

.method public getReleaseNoteZH()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcn/powervision/upgrade/model/ReleaseNote;->releaseNoteZH:Ljava/util/List;

    return-object v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/powervision/upgrade/model/ReleaseNote;->addTime:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/powervision/upgrade/model/ReleaseNote;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setDeviceVersion(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/powervision/upgrade/model/ReleaseNote;->deviceVersion:Ljava/lang/String;

    return-void
.end method

.method public setReleaseNoteEN(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcn/powervision/upgrade/model/ReleaseNote;->releaseNoteEN:Ljava/util/List;

    return-void
.end method

.method public setReleaseNoteJA(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcn/powervision/upgrade/model/ReleaseNote;->releaseNoteJA:Ljava/util/List;

    return-void
.end method

.method public setReleaseNoteZH(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcn/powervision/upgrade/model/ReleaseNote;->releaseNoteZH:Ljava/util/List;

    return-void
.end method
