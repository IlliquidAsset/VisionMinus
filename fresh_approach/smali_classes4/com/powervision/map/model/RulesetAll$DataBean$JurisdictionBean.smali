.class public Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;
.super Ljava/lang/Object;
.source "RulesetAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/map/model/RulesetAll$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JurisdictionBean"
.end annotation


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;->region:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 255
    iput p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/powervision/map/model/RulesetAll$DataBean$JurisdictionBean;->region:Ljava/lang/String;

    return-void
.end method
