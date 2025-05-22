.class public Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;
.super Lcom/mob/commons/dialog/entity/BaseEntity;
.source "MobPolicyUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/dialog/entity/MobPolicyUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColorId:I

.field private backgroundColorStr:Ljava/lang/String;

.field private negativeBtnColorId:I

.field private negativeBtnColorStr:Ljava/lang/String;

.field private positiveBtnColorId:I

.field private positiveBtnColorStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/mob/commons/dialog/entity/BaseEntity;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->backgroundColorId:I

    .line 48
    iput v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->positiveBtnColorId:I

    .line 50
    iput v0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->negativeBtnColorId:I

    return-void
.end method

.method static synthetic access$000(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->backgroundColorId:I

    return p0
.end method

.method static synthetic access$100(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->backgroundColorStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->positiveBtnColorId:I

    return p0
.end method

.method static synthetic access$300(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->positiveBtnColorStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->negativeBtnColorId:I

    return p0
.end method

.method static synthetic access$500(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->negativeBtnColorStr:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/mob/commons/dialog/entity/MobPolicyUi;
    .locals 2

    .line 54
    new-instance v0, Lcom/mob/commons/dialog/entity/MobPolicyUi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/commons/dialog/entity/MobPolicyUi;-><init>(Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;Lcom/mob/commons/dialog/entity/MobPolicyUi$1;)V

    return-object v0
.end method

.method public setBackgroundColorId(I)Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;
    .locals 0

    .line 64
    iput p1, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->backgroundColorId:I

    return-object p0
.end method

.method public setBackgroundColorStr(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->backgroundColorStr:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeBtnColorId(I)Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;
    .locals 0

    .line 108
    iput p1, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->negativeBtnColorId:I

    return-object p0
.end method

.method public setNegativeBtnColorStr(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->negativeBtnColorStr:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveBtnColorId(I)Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;
    .locals 0

    .line 86
    iput p1, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->positiveBtnColorId:I

    return-object p0
.end method

.method public setPositiveBtnColorStr(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/mob/commons/dialog/entity/MobPolicyUi$Builder;->positiveBtnColorStr:Ljava/lang/String;

    return-object p0
.end method
