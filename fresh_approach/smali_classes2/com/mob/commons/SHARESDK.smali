.class public Lcom/mob/commons/SHARESDK;
.super Ljava/lang/Object;
.source "SHARESDK.java"

# interfaces
.implements Lcom/mob/commons/MobProduct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SHARESDK"

    return-object v0
.end method

.method public getSdkver()I
    .locals 1

    .line 13
    sget v0, Lcn/sharesdk/framework/ShareSDK;->SDK_VERSION_CODE:I

    return v0
.end method
