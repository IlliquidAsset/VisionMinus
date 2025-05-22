.class public Lcom/powervision/map/model/RulesetBean;
.super Ljava/lang/Object;
.source "RulesetBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/map/model/RulesetBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/powervision/map/model/RulesetBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/map/model/RulesetBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean;->data:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/powervision/map/model/RulesetBean;->status:Ljava/lang/String;

    return-void
.end method
