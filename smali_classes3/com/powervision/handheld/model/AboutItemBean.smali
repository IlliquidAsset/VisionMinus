.class public Lcom/powervision/handheld/model/AboutItemBean;
.super Ljava/lang/Object;
.source "AboutItemBean.java"


# instance fields
.field private isShowCheck:Z

.field private mVersionCode:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/powervision/handheld/model/AboutItemBean;->mVersionName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/powervision/handheld/model/AboutItemBean;->mVersionCode:Ljava/lang/String;

    .line 17
    iput-boolean p3, p0, Lcom/powervision/handheld/model/AboutItemBean;->isShowCheck:Z

    return-void
.end method


# virtual methods
.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/powervision/handheld/model/AboutItemBean;->mVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/powervision/handheld/model/AboutItemBean;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public isShowCheck()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/powervision/handheld/model/AboutItemBean;->isShowCheck:Z

    return v0
.end method

.method public setShowCheck(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/powervision/handheld/model/AboutItemBean;->isShowCheck:Z

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/powervision/handheld/model/AboutItemBean;->mVersionCode:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/powervision/handheld/model/AboutItemBean;->mVersionName:Ljava/lang/String;

    return-void
.end method
