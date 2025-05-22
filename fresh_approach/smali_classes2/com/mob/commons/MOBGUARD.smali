.class public Lcom/mob/commons/MOBGUARD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/commons/MobProduct;
.implements Lcom/mob/tools/proguard/ClassKeeper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductTag()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/guard/MobGuard;->getSdkTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkver()I
    .locals 1

    const/16 v0, 0x4e21

    return v0
.end method
