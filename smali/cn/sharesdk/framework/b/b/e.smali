.class public Lcn/sharesdk/framework/b/b/e;
.super Lcn/sharesdk/framework/b/b/c;
.source "ExitEvent.java"


# static fields
.field private static b:I

.field private static c:J


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcn/sharesdk/framework/b/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "[EXT]"

    return-object v0
.end method

.method protected a(J)V
    .locals 0

    .line 51
    sput-wide p1, Lcn/sharesdk/framework/b/b/e;->c:J

    return-void
.end method

.method protected b()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected d()J
    .locals 2

    .line 39
    sget v0, Lcn/sharesdk/framework/b/b/e;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected e()J
    .locals 2

    .line 43
    sget-wide v0, Lcn/sharesdk/framework/b/b/e;->c:J

    return-wide v0
.end method

.method protected f()V
    .locals 1

    .line 47
    sget v0, Lcn/sharesdk/framework/b/b/e;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/sharesdk/framework/b/b/e;->b:I

    return-void
.end method

.method public g()Z
    .locals 2

    .line 25
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    const-string v1, "insertExitEventCount"

    .line 26
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->i(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/sharesdk/framework/b/b/e;->b:I

    const-string v1, "lastInsertExitEventTime"

    .line 27
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->h(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcn/sharesdk/framework/b/b/e;->c:J

    .line 28
    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->g()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 3

    .line 32
    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->h()V

    .line 33
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    .line 34
    sget-wide v1, Lcn/sharesdk/framework/b/b/e;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastInsertExitEventTime"

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    sget v1, Lcn/sharesdk/framework/b/b/e;->b:I

    const-string v2, "insertExitEventCount"

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7c

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    iget-object v2, p0, Lcn/sharesdk/framework/b/b/e;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    iget-object v2, p0, Lcn/sharesdk/framework/b/b/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/sharesdk/framework/b/b/e;->a:J

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
