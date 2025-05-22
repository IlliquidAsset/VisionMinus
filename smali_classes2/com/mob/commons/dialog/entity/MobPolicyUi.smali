.class public Lcom/mob/commons/dialog/entity/MobPolicyUi;
.super Lcom/mob/commons/dialog/entity/BaseEntity;
.source "MobPolicyUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private backgroundColorId:I

.field private backgroundColorStr:Ljava/lang/String;

.field private negativeBtnColorId:I

.field private negativeBtnColorStr:Ljava/lang/String;

.field private positiveBtnColorId:I

.field private positiveBtnColorStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/mob/commons/dialog/entity/BaseEntity;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->access$000(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->backgroundColorId:I

    .line 14
    invoke-static {p1}, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->access$100(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->backgroundColorStr:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->access$200(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->positiveBtnColorId:I

    .line 16
    invoke-static {p1}, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->access$300(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->positiveBtnColorStr:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->access$400(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->negativeBtnColorId:I

    .line 18
    invoke-static {p1}, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->access$500(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->negativeBtnColorStr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;Lcom/mob/commons/dialog/entity/MobPolicyUi$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mob/commons/dialog/entity/MobPolicyUi;-><init>(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)V

    return-void
.end method


# virtual methods
.method public getBackgroundColorId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->backgroundColorId:I

    return v0
.end method

.method public getBackgroundColorStr()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->backgroundColorStr:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeBtnColorId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->negativeBtnColorId:I

    return v0
.end method

.method public getNegativeBtnColorStr()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->negativeBtnColorStr:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveBtnColorId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->positiveBtnColorId:I

    return v0
.end method

.method public getPositiveBtnColorStr()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi;->positiveBtnColorStr:Ljava/lang/String;

    return-object v0
.end method
