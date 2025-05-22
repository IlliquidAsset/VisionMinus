.class public Lcom/powervision/map/model/AdvisoryBean;
.super Ljava/lang/Object;
.source "AdvisoryBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/AdvisoryBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/powervision/map/model/AdvisoryBean$DataBean;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/powervision/map/model/AdvisoryBean$DataBean;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean;->data:Lcom/powervision/map/model/AdvisoryBean$DataBean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/powervision/map/model/AdvisoryBean$DataBean;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean;->data:Lcom/powervision/map/model/AdvisoryBean$DataBean;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean;->status:Ljava/lang/String;

    return-void
.end method
