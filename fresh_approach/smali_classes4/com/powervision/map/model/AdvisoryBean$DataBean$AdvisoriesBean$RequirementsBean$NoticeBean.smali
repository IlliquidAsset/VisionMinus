.class public Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;
.super Ljava/lang/Object;
.source "AdvisoryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoticeBean"
.end annotation


# instance fields
.field private digital:Z

.field private phone:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhone()Ljava/lang/Object;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;->phone:Ljava/lang/Object;

    return-object v0
.end method

.method public isDigital()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;->digital:Z

    return v0
.end method

.method public setDigital(Z)V
    .locals 0

    .line 426
    iput-boolean p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;->digital:Z

    return-void
.end method

.method public setPhone(Ljava/lang/Object;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean$RequirementsBean$NoticeBean;->phone:Ljava/lang/Object;

    return-void
.end method
