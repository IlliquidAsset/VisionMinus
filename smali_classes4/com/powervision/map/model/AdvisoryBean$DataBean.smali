.class public Lcom/powervision/map/model/AdvisoryBean$DataBean;
.super Ljava/lang/Object;
.source "AdvisoryBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/AdvisoryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;
    }
.end annotation


# instance fields
.field private advisories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;",
            ">;"
        }
    .end annotation
.end field

.field private color:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvisories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean;->advisories:Ljava/util/List;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean;->color:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvisories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/AdvisoryBean$DataBean$AdvisoriesBean;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean;->advisories:Ljava/util/List;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/powervision/map/model/AdvisoryBean$DataBean;->color:Ljava/lang/String;

    return-void
.end method
