.class Lcom/mob/commons/authorize/a$3;
.super Ljava/lang/Object;
.source "Authorizer.java"

# interfaces
.implements Lcom/mob/commons/MobProduct;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/authorize/a;->a(Ljava/util/HashMap;Lcom/mob/commons/MobProduct;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/authorize/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/authorize/a;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/mob/commons/authorize/a$3;->a:Lcom/mob/commons/authorize/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductTag()Ljava/lang/String;
    .locals 1

    const-string v0, "COMMON"

    return-object v0
.end method

.method public getSdkver()I
    .locals 1

    .line 806
    sget v0, Lcom/mob/MobSDK;->SDK_VERSION_CODE:I

    return v0
.end method
