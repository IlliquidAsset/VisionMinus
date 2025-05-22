.class public Lcom/mob/mcl/MCLSDK;
.super Ljava/lang/Object;
.source "MCLSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mcl/MCLSDK$ELPMessageListener;
    }
.end annotation


# static fields
.field public static final SDK_TAG:Ljava/lang/String; = "MCLSDK"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "MCLSDK : 1.0.2"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBusinessMessageListener(ILcom/mob/mcl/BusinessMessageListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/mob/mcl/b/b;->a(ILcom/mob/mcl/BusinessMessageListener;)V

    return-void
.end method

.method public static addELPMessageListener(Lcom/mob/mcl/MCLSDK$ELPMessageListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/mcl/b/b;->a(Lcom/mob/mcl/MCLSDK$ELPMessageListener;)V

    return-void
.end method

.method public static deleteMsg(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static getCreateSuidTime()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/mcl/b/b;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSuid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/mcl/b/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTcpStatus(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mob/mcl/c/i;->c()Lcom/mob/mcl/c/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/i;->a(Lcom/mob/mcl/BusinessCallBack;)V

    return-void
.end method

.method public static initMCLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/mcl/b/b;

    invoke-direct {v0}, Lcom/mob/mcl/b/b;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/mob/mcl/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static syncSuid(Ljava/lang/String;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/mob/mcl/b/b;->a(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method
