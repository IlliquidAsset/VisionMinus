.class public Lcom/mob/commons/b/g$a;
.super Ljava/lang/Object;
.source "Meizu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/mob/commons/b/g$a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/b/g$a;)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/mob/commons/b/g$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mob/commons/b/g$a;)Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/mob/commons/b/g$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/mob/commons/b/g$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 166
    iput-wide p1, p0, Lcom/mob/commons/b/g$a;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/mob/commons/b/g$a;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 5

    .line 178
    iget-wide v0, p0, Lcom/mob/commons/b/g$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
