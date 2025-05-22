.class public Lcn/sharesdk/framework/b/b/d;
.super Lcn/sharesdk/framework/b/b/c;
.source "DemoEvent.java"


# static fields
.field private static d:I

.field private static m:J


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcn/sharesdk/framework/b/b/c;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcn/sharesdk/framework/b/b/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "[EVT]"

    return-object v0
.end method

.method protected a(J)V
    .locals 0

    .line 60
    sput-wide p1, Lcn/sharesdk/framework/b/b/d;->m:J

    return-void
.end method

.method protected b()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method protected c()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method protected d()J
    .locals 2

    .line 48
    sget v0, Lcn/sharesdk/framework/b/b/d;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected e()J
    .locals 2

    .line 52
    sget-wide v0, Lcn/sharesdk/framework/b/b/d;->m:J

    return-wide v0
.end method

.method protected f()V
    .locals 1

    .line 56
    sget v0, Lcn/sharesdk/framework/b/b/d;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/sharesdk/framework/b/b/d;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7c

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/sharesdk/framework/b/b/d;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/framework/b/b/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
