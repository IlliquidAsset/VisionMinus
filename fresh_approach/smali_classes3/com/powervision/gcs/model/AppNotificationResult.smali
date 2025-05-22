.class public Lcom/powervision/gcs/model/AppNotificationResult;
.super Ljava/lang/Object;
.source "AppNotificationResult.java"


# instance fields
.field private language:Ljava/lang/String;

.field private noticeContent:Ljava/lang/String;

.field private noticeTitle:Ljava/lang/String;

.field private singleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/powervision/gcs/model/AppNotificationResult;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeContent()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/powervision/gcs/model/AppNotificationResult;->noticeContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/gcs/model/AppNotificationResult;->noticeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/powervision/gcs/model/AppNotificationResult;->singleId:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/powervision/gcs/model/AppNotificationResult;->language:Ljava/lang/String;

    return-void
.end method

.method public setNoticeContent(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/powervision/gcs/model/AppNotificationResult;->noticeContent:Ljava/lang/String;

    return-void
.end method

.method public setNoticeTitle(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/powervision/gcs/model/AppNotificationResult;->noticeTitle:Ljava/lang/String;

    return-void
.end method

.method public setSingleId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/powervision/gcs/model/AppNotificationResult;->singleId:Ljava/lang/String;

    return-void
.end method
