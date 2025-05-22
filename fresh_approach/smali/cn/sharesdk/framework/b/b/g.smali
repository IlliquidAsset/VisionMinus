.class public Lcn/sharesdk/framework/b/b/g;
.super Lcn/sharesdk/framework/b/b/c;
.source "StartEvent.java"


# static fields
.field private static a:I

.field private static b:J


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

    const-string v0, "[RUN]"

    return-object v0
.end method

.method protected a(J)V
    .locals 0

    .line 54
    sput-wide p1, Lcn/sharesdk/framework/b/b/g;->b:J

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

    .line 42
    sget v0, Lcn/sharesdk/framework/b/b/g;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected e()J
    .locals 2

    .line 46
    sget-wide v0, Lcn/sharesdk/framework/b/b/g;->b:J

    return-wide v0
.end method

.method protected f()V
    .locals 1

    .line 50
    sget v0, Lcn/sharesdk/framework/b/b/g;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/sharesdk/framework/b/b/g;->a:I

    return-void
.end method

.method public g()Z
    .locals 2

    .line 28
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    const-string v1, "insertRunEventCount"

    .line 29
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->i(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/sharesdk/framework/b/b/g;->a:I

    const-string v1, "lastInsertRunEventTime"

    .line 30
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a/e;->h(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcn/sharesdk/framework/b/b/g;->b:J

    .line 31
    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->g()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 3

    .line 35
    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->h()V

    .line 36
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    .line 37
    sget-wide v1, Lcn/sharesdk/framework/b/b/g;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastInsertRunEventTime"

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    sget v1, Lcn/sharesdk/framework/b/b/g;->a:I

    const-string v2, "insertRunEventCount"

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/b/a/e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7c

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcn/sharesdk/framework/b/b/g;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcn/sharesdk/framework/b/b/g;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
