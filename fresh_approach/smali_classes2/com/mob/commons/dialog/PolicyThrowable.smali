.class public Lcom/mob/commons/dialog/PolicyThrowable;
.super Ljava/lang/Throwable;
.source "PolicyThrowable.java"


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Privacy policy is not accepted"

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p2}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>(Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/mob/commons/dialog/PolicyThrowable;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/mob/commons/dialog/PolicyThrowable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    iput p1, p0, Lcom/mob/commons/dialog/PolicyThrowable;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/mob/commons/dialog/PolicyThrowable;->code:I

    return v0
.end method
