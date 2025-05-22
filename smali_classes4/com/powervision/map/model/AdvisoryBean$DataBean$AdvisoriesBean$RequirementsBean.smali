.class public Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean;
.super Ljava/lang/Object;
.source "AdvisoryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequirementsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;
    }
.end annotation


# instance fields
.field private notice:Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotice()Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean;->notice:Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;

    return-object v0
.end method

.method public setNotice(Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean;->notice:Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;

    return-void
.end method
