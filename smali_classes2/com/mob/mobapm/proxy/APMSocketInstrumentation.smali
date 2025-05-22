.class public Lcom/mob/mobapm/proxy/APMSocketInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;


# instance fields
.field private impl:Ljava/net/Socket;

.field private transaction:Lcom/mob/mobapm/core/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 1

    .line 1
    new-instance v0, Lcom/mob/mobapm/proxy/e/a;

    invoke-direct {v0, p0}, Lcom/mob/mobapm/proxy/e/a;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
